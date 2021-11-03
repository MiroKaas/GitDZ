# 1. Написать функцию num_translate(), переводящую числительные от 0 до 10 c английского на русский язык. Например:
# >>> num_translate("one")
# "один"
# >>> num_translate("eight")
# "восемь"
def num_translate(num):
    translate_dictionary = {
        'zero': 'ноль',
        'one': 'один',
        'two': 'два',
        'three': 'три',
        'for': 'четыре',
        'five': 'пять',
        'six': 'шесть',
        'seven': 'семь',
        'eight': 'восемь',
        'nine': 'девять',
        'ten': 'десять'
        }

    return print(translate_dictionary.get(num, None))

num_translate('two')