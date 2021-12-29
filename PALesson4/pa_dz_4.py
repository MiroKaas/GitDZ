# Написать приложение, которое собирает основные новости с сайта на выбор news.mail.ru, lenta.ru, yandex-новости. 
# Для парсинга использовать XPath. Структура данных должна содержать:
# название источника;
# наименование новости;
# ссылку на новость;
# дата публикации.
# Сложить собранные новости в БД
import requests
from lxml import html
from datetime import datetime
from pprint import pprint
from pymongo import MongoClient
from pymongo.errors import DuplicateKeyError as dke
import re

client = MongoClient('127.0.0.1', 27017)

db = client['yandexnews']
actual_news = db.actual_news

main_url = 'https://yandex.ru'
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'}

response = requests.get(main_url + '/news/', headers=headers)

dom = html.fromstring(response.text)

yandex_news = dom.xpath("//div[contains(@class, 'news-top-flexible')]//div[contains(@class, 'mg-card ')]")

if response.ok:
    for block in yandex_news:
        news = {}
        source = block.xpath(".//span[contains(@class, 'mg-card-source__source')]/a/text()")
        text = block.xpath(".//h2[contains(@class, 'mg-card__title')]/a/text()")
        link = block.xpath(".//h2[contains(@class, 'mg-card__title')]/a/@href")
        date = block.xpath(".//span[contains(@class, 'mg-card-source__time')]/text()")

        news['_id'] = re.split(r'=', link[0].split('?')[1].split('&')[-1])[1]
        news['source'] = source[0]
        news['text'] = text[0].replace('\xa0', ' ')
        news['link'] = link[0]
        news['date'] = datetime.now().strftime("%Y-%m-%d") + ' ' + date[0]
        try:
            actual_news.insert_one(news)
        except dke:
            print(f'Документ с id={news["_id"]} уже существует')
