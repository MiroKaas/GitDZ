# Необходимо собрать информацию о вакансиях на вводимую должность (используем input или через аргументы получаем должность)
#  с сайтов HH и/или Superjob. Приложение должно анализировать несколько страниц сайта (также вводим через input или аргументы).
#  Получившийся список должен содержать в себе минимум:
# 1. Наименование вакансии.
# 2. Предлагаемую зарплату (разносим в три поля: минимальная и максимальная и валюта. цифры преобразуем к цифрам).
# 3. Ссылку на саму вакансию.
# 4. Сайт, откуда собрана вакансия.
from bs4 import BeautifulSoup as bs
import requests
from pprint import pprint

main_url = 'https://hh.ru'
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'}

page = 0
last_page = 1
vacancy_text = 'sql'
params = {
    'area': '1',
    'fromSearchLine': 'true',
    'text': vacancy_text,
    'page': page
}

vacancies_info = []

while page < last_page:
        response = requests.get(main_url + '/search/vacancy',params=params, headers=headers)

        if response.ok:
            dom = bs(response.text, 'html.parser')
            vacancies = dom.find_all('div', {'class': 'vacancy-serp-item'})

            for vacancy in vacancies:
                vacancy_info = {}

                info = vacancy.find('a', {'data-qa': 'vacancy-serp__vacancy-title'})
                name = info.text
                link = info.get('href')
                min_salary = None
                max_salary = None
                currency = None

                try:
                    salary = vacancy.find('span', {'data-qa': 'vacancy-serp__vacancy-compensation'}).text
                    data = salary.replace('\u202f', '').split()

                    if data[0] == 'от':
                        min_salary = int(data[1])
                        max_salary = None

                    elif data[0] == 'до':
                        min_salary = None
                        max_salary = int(data[1])

                    else:
                        min_salary = int(data[0])
                        max_salary = int(data[2])
                    currency = data[-1]

                except:
                    min_price = None
                    max_price = None
                    currency = None

                vacancy_info['website'] = main_url
                vacancy_info['name'] = name
                vacancy_info['link'] = link
                vacancy_info['min_price'] = min_salary
                vacancy_info['max_price'] = max_salary
                vacancy_info['currency'] = currency

                vacancies_info.append(vacancy_info)

            page += 1

            count = dom.find_all('a', {'class': 'bloko-button'})
            last_page = int(count[-2].text)

        else:
            break

pprint(vacancies_info)