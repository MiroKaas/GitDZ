import psycopg2
import pandas as pd

# соединения к исходной и целевой базе
conn_string_1 = "как на уроке для исходной бд"
conn_string_2 = "как на уроке для целевой бд"
# список таблиц
tables = ("customer", "lineitem", "nation", "orders", "part", "partsupp", "region", "supplier")

for i in range(len(tables)):
    tbl = tables[i]
# количество строк в исходной таблице
    with psycopg2.connect(conn_string_1) as conn, conn.cursor() as cursor:
        cursor.execute(f'select count(*) from {tbl} limit 1')
        source_rows_count = int(cursor.fetchall()[0][0])
        print(f"Количество строк в исходной таблице: {source_rows_count}")
# записываем в файл
        q = f"COPY {tbl} TO STDOUT WITH DELIMITER ',' CSV HEADER;"
        with open(f'{tbl}.csv', 'w') as f:
            cursor.copy_expert(q, f)
# проверяем количество строк в файле
        source_rows_count_csv = int(len(pd.read_csv(f"{tbl}.csv").index))
        print(f"Количество строк в файле: {source_rows_count_csv}")
# если количество строк совпадает то загружаем
    if source_rows_count == source_rows_count_csv:
# загружаем в целевую бд
        with psycopg2.connect(conn_string_2) as conn, conn.cursor() as cursor:
            # очищаем таблицу
            cursor.execute(f'truncate table {tbl}')
            q = f"COPY {tbl} from STDIN WITH DELIMITER ',' CSV HEADER;"
            with open(f'{tbl}.csv', 'r') as f:
                cursor.copy_expert(q, f)
# количество строк в целевой бд
            cursor.execute(f'select count(*) from {tbl} limit 1')
            destination_rows_count = int(cursor.fetchall()[0][0])
            print(f"Количество строк в целевой таблице: {destination_rows_count}")
# проверка исходной и целевой таблицы 
            if source_rows_count == destination_rows_count:
                print(f"---------------------\
                        Перенос {tbl} прошел успешно.\
                        _______________________________________________________")
            else:
                print(f"Количество строк в исходной таблице {tbl} отличается от целевой.")
            

    else:
        print(f"Количество строк в исходной таблице {tbl} отличается от файла.")
        break

