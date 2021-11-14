# 3. Есть два файла: в одном хранятся ФИО пользователей сайта, а в другом — данные об их хобби. 
# Известно, что при хранении данных используется принцип: одна строка — один пользователь, разделитель между значениями — запятая. 
# Написать код, загружающий данные из обоих файлов и формирующий из них словарь: ключи — ФИО, значения — данные о хобби. 
# Сохранить словарь в файл. Проверить сохранённые данные. Если в файле, хранящем данные о хобби, меньше записей, чем в файле с ФИО, 
# задаём в словаре значение None. Если наоборот — выходим из скрипта с кодом «1». При решении задачи считать, что объём данных в 
# файлах во много раз меньше объема ОЗУ.
# Фрагмент файла с данными о пользователях (users.csv):
# Иванов,Иван,Иванович
# Петров,Петр,Петрович
# Фрагмент файла с данными о хобби (hobby.csv):
# скалолазание,охота
# горные лыжи
import csv

with open('users.csv', 'r', encoding='utf-8') as u, \
     open('hobby.csv', 'r', encoding='utf-8') as h:
    rows1 = list(csv.reader(u))
    rows2 = list(csv.reader(h))

new_dict = {}
if len(rows1) < len(rows2):
    print('ErrorCode: 1')
else:
    for i in range(len(rows1)):
        try:
            a_1 = " ".join(rows1[i])
            a_2 = ", ".join(rows2[i])
            temp = {(a_1, a_2)}
            new_dict.update(temp)
        except(IndexError):
            a_1 = " ".join(rows1[i])
            a_2 = None
            temp = {(a_1, a_2)}
            new_dict.update(temp)
# запись
with open('users_with_hobbies.csv', 'w') as f:
    f.write(str(new_dict))

# проверка
with open('users_with_hobbies.csv', 'r') as f:
    print(f.readline())
