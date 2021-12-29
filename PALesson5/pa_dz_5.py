# Написать программу, которая собирает товары «В тренде» с сайта техники mvideo и складывает данные в БД. Сайт можно выбрать и свой. 
# Главный критерий выбора: динамически загружаемые товары
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from pymongo import MongoClient
from pymongo.errors import DuplicateKeyError as dke
from pprint import pprint

client = MongoClient('127.0.0.1', 27017)

db = client['mvideo_trend']
trends = db.trends

driver = webdriver.Chrome()
driver.get('https://mvideo.ru')

driver.implicitly_wait(10)

element = driver.find_element(By.TAG_NAME, 'mvid-shelf-group')
actions = ActionChains(driver)
actions.move_to_element(element).perform()
WebDriverWait(driver, 5).until(EC.element_to_be_clickable((By.XPATH, "//button/div/span[@class='title'" " and contains(.,'В тренде')]/../.."))).click()

names = element.find_elements(By.XPATH, ".//div[contains(@class, 'product-mini-card__name')]")
prices = element.find_elements(By.XPATH, ".//div[contains(@class, 'product-mini-card__price')]" "//span[@class='price__main-value']")

for i in range(len(names)):
    goods = {}
    goods['name'] = names[i].text
    goods['price'] = prices[i].text
    
    try:
        trends.insert_one(goods)
    except dke:
        print(f'Документ с name={goods["name"]} уже существует')
