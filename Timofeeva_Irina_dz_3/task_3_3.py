# 3. Написать функцию thesaurus(), принимающую в качестве аргументов имена сотрудников и возвращающую словарь, 
# в котором ключи — первые буквы имён, а значения — списки, содержащие имена, начинающиеся с соответствующей буквы. 
# Например:
# >>>  thesaurus("Иван", "Мария", "Петр", "Илья")
# {
#     "И": ["Иван", "Илья"], 
#     "М": ["Мария"], "П": ["Петр"]
# }

def thesaurus(*names):
    title_literals = {}
    for i in names:
        key = i[0].capitalize()
        if key not in title_literals:
            title_literals[key] = []
        title_literals[key].append(i)
    return print(title_literals)

thesaurus("Иван", "Мария", "Петр", "Илья")