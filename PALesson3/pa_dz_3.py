# 1. Развернуть у себя на компьютере/виртуальной машине/хостинге MongoDB и реализовать функцию, которая будет добавлять 
# только новые вакансии/продукты в вашу базу.
# 2. Написать функцию, которая производит поиск и выводит на экран вакансии с заработной платой больше введённой суммы 
# (необходимо анализировать оба поля зарплаты).
from typing import Collection
from bs4 import BeautifulSoup as bs
import requests
from pprint import pprint
from pymongo import MongoClient
import pymongo
from pymongo.errors import DuplicateKeyError as dke

client = MongoClient('127.0.0.1', 27017)

db = client['devsql']
actual_vacancies = db.actual_vacancies

main_url = 'https://hh.ru'
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'}

page = 0
vacancy_text = 'sql'
params = {
    'area': '1',
    'fromSearchLine': 'true',
    'text': vacancy_text,
    'page': page
}

response = requests.get(main_url + '/search/vacancy',params=params, headers=headers)

while True:
        if response.ok:
            dom = bs(response.text, 'html.parser')
            vacancies = dom.find_all('div', {'class': 'vacancy-serp-item'})

            for vacancy in vacancies:
                vacancy_info = {}

                info = vacancy.find('a', {'data-qa': 'vacancy-serp__vacancy-title'})
                name = info.text
                link = info.get('href')

                salary = vacancy.find('span', {'data-qa': 'vacancy-serp__vacancy-compensation'})

                if salary is not None:
                    salary_sum = salary.text.split()

                    if salary_sum[0] == 'от':
                        min_salary = int(salary_sum[1] + salary_sum[2])
                        max_salary = None
                        currency = salary_sum[3]

                    elif salary_sum[0] == 'до':
                        min_salary = None
                        max_salary = int(salary_sum[1] + salary_sum[2])
                        currency = salary_sum[3]

                    else:
                        min_salary = int(salary_sum[0] + salary_sum[1])
                        max_salary = int(salary_sum[3] + salary_sum[4])
                        currency = salary_sum[3]

                else:
                    min_price = None
                    max_price = None
                    currency = None

                vacancy_info['_id'] = link.split('?')[0].split('/')[-1]
                vacancy_info['website'] = main_url
                vacancy_info['vacancy'] = name
                vacancy_info['link'] = link
                vacancy_info['min_price'] = min_salary
                vacancy_info['max_price'] = max_salary
                vacancy_info['currency'] = currency

                actual_vacancies.insert_one(vacancy_info)

        if dom.find('a', {'data-qa': 'pager-next'}) is not None:
            next_url = dom.find('a', {'data-qa': 'pager-next'}).get('href')
            response = requests.get(main_url + next_url, headers=headers)

        else:
            break

print(actual_vacancies.count_documents({}))

def salary_finder():
    salary_min = int(input('Введите минимальную зарплату: '))

    vacancies_answer = []
    for i in actual_vacancies.find({'$or': [{'min_wage': {'$gt': salary_min}}, {'max_wage': {'$gt': salary_min}}]}):
        vacancies_answer.append(i)

    return vacancies_answer

pprint(salary_finder)
