# Посмотреть документацию к API GitHub, разобраться как вывести список репозиториев для конкретного пользователя, 
# сохранить JSON-вывод в файле *.json.
import requests
import json

user = 'MiroKaas'

r = requests.get(f'https://api.github.com/users/{user}/repos')

with open('answer.json', 'w') as f:
    json.dump(r.json(), f)

for i in r.json():
    print(i['name'])
    