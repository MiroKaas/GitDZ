# 5. Реализовать функцию get_jokes(), возвращающую n шуток, сформированных из трех случайных слов, 
# взятых из трёх списков (по одному из каждого):
# nouns = ["автомобиль", "лес", "огонь", "город", "дом"]
# adverbs = ["сегодня", "вчера", "завтра", "позавчера", "ночью"]
# adjectives = ["веселый", "яркий", "зеленый", "утопичный", "мягкий"]
#         Например:
# >>> get_jokes(2)
# ["лес завтра зеленый", "город вчера веселый"]
# Документировать код функции.
# Сможете ли вы добавить еще один аргумент — флаг, разрешающий или запрещающий повторы слов в шутках 
# (когда каждое слово можно использовать только в одной шутке)? 
# Сможете ли вы сделать аргументы именованными?

from random import choice

"""Определение функции"""
def get_jokes(count):
    """
    nouns - существительные
    adverbs - период
    abjectives - прилагательное
    """
    nouns = ["автомобиль", "лес", "огонь", "город", "дом"]
    adverbs = ["сегодня", "вчера", "завтра", "позавчера", "ночью"]
    adjectives = ["веселый", "яркий", "зеленый", "утопичный", "мягкий"]

    jokes_list = []
    cicle = 0
    while cicle < count:
        jokes_list.append(f"{choice(nouns)} {choice(adverbs)} {choice(adjectives)}")
        cicle += 1

    return jokes_list

print(get_jokes(3))    