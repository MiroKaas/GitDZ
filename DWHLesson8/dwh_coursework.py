from datetime import datetime
from venv import create
from airflow import DAG
from airflow.operators.postgres_operator import PostgresOperator
from airflow.operators.python_operator import PythonOperator
from airflow.hooks.postgres_hook import PostgresHook

DEFAULT_ARGS = {
    "owner": "airflow",
    "retries": 1,
    "start_date": datetime(2022, 2, 25),
    "end_date": datetime(2022, 3, 20),
    "email_on_failure": False,
    "email_on_retry": False,
    "depends_on_past": False
}

with DAG(
    dag_id="course_work",
    default_args=DEFAULT_ARGS,
    schedule_interval="@daily",
    max_active_runs=1,
    catchup = False,
    tags=['data-flow']
) as dag:
    # В целевой сделать схему stage.
    # Даг на drop if exists в target таблиц.
    # Даг на создание структуры. 
    # перелить из source в stage схему target db
    # перелить в data vault core схему
    # tables = ("orders", "products")
    tables = ("orders", "products", "suppliers", "orderdetails", "productsuppl")

    def export_data(**kwargs):
        phook_1 = PostgresHook(postgres_conn_id="source_db")
        conn_string_1 = phook_1.get_conn()
        with conn_string_1.cursor() as cursor:
            for i in tables:
        # записываем в файл
                q = f"COPY {i} TO STDOUT WITH DELIMITER '|' CSV HEADER;"
                with open(f'{i}.csv', 'w') as f:
                    cursor.copy_expert(q, f)

    def clear_data(**kwargs):
        phook_2 = PostgresHook(postgres_conn_id="target_db")
        conn_string_2 = phook_2.get_conn()
        with conn_string_2.cursor() as cursor:
            for i in tables:
        # дроп
                q = f"DROP IF EXISTS {i}"   

    def import_data_stage(**kwargs):
        phook_2 = PostgresHook(postgres_conn_id="target_db").get_conn()
        cursor = phook_2.cursor()
        # загружаем в целевую бд
        for i in tables:
            query = f"COPY stage.{i} FROM STDIN WITH DELIMITER '|' CSV HEADER;"
            with open(f'{i}.csv', 'r') as f:
                cursor.copy_expert(query, f)
                phook_2.commit()

    export_data_to_csv = PythonOperator(
        task_id='export_data_to_csv',
        python_callable = export_data
    )
    drop_table = PythonOperator(
        task_id='drop_table',
        python_callable = clear_data
    )
    
    create_tables_stage = PostgresOperator(
        task_id='create_tables',
        postgres_conn_id='target_db',
        sql='sql/ddl_target_stage.sql'
    )


    import_data_from_csv = PythonOperator(
        task_id='import_data_from_csv',
        python_callable = import_data_stage
    )
    
    create_tables_core = PostgresOperator(
        task_id='create_tables_core',
        postgres_conn_id='target_db',
        sql='sql/ddl_target_core.sql'
    )

    insert_tables_core = PostgresOperator(
        task_id='insert_tables_core',
        postgres_conn_id='target_db',
        sql='sql/dml_insert_core.sql'
    )

export_data_to_csv >> drop_table >> create_tables_stage >> import_data_from_csv >> create_tables_core >> insert_tables_core
