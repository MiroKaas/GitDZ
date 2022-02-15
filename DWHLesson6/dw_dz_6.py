from airflow import DAG
from airflow.operators.postgres_operator import PostgresOperator
from airflow.operators.python_operator import PythonOperator
from airflow.hooks.postgres_hook import PostgresHook
import psycopg2
from datetime import datetime

tables = ("customer", "lineitem", "nation", "orders", "part", "partsupp", "region", "supplier")

def export_data(**kwargs):
    phook_1 = PostgresHook(postgres_conn_id="postgres_target_1")
    conn_string_1 = phook_1.get_conn()
    with conn_string_1.cursor() as cursor:
        for i in tables:
    # записываем в файл
            q = f"COPY {i} TO STDOUT WITH DELIMITER '|' CSV HEADER;"
            with open(f'{i}.csv', 'w') as f:
                cursor.copy_expert(q, f)


def import_data(**kwargs):
    phook_2 = PostgresHook(postgres_conn_id="postgres_target_2").get_conn()
    cursor = phook_2.cursor()
    # загружаем в целевую бд
    for i in tables:
        with open(f'{i}.csv', 'r') as f:
            next(f)
            cursor.copy_from(f, i, sep='|')
        phook_2.commit()


DEFAULT_ARGS = {
    "owner": "airflow",
    "retries": 1,
    "start_date": datetime(2022, 2, 13),
    "end_date": datetime(2022, 2, 20),
    "email_on_failure": False,
    "email_on_retry": False,
    "depends_on_past": False
}


with DAG(
    dag_id="dump_data",
    default_args=DEFAULT_ARGS,
    schedule_interval="@daily",
    max_active_runs=1,
    tags=['data-flow']
) as dag666:
    
    export_data_to_csv = PythonOperator(
        task_id='export_data_to_csv',
        python_callable = export_data
    )
    truncate_table = PostgresOperator(
        task_id='truncate_table_db',
        postgres_conn_id='postgres_target_2',
        sql="TRUNCATE TABLE customer"
    )
    
    import_data_from_csv = PythonOperator(
        task_id='import_data_from_csv',
        python_callable = import_data
    )
    

    export_data_to_csv >> truncate_table >> import_data_from_csv