# 2. Дан список:
# ['в', '5', 'часов', '17', 'минут', 'температура', 'воздуха', 'была', '+5', 'градусов']

# Необходимо его обработать — обособить каждое целое число (вещественные не трогаем) кавычками (добавить кавычку до и кавычку после элемента
#  списка, являющегося числом) и дополнить нулём до двух целочисленных разрядов:
# ['в', '"', '05', '"', 'часов', '"', '17', '"', 'минут', 'температура', 'воздуха', 'была', '"', '+05', '"', 'градусов']

# Сформировать из обработанного списка строку:
# в "05" часов "17" минут температура воздуха была "+05" градусов

# Подумать, какое условие записать, чтобы выявить числа среди элементов списка? Как модифицировать это условие для чисел со знаком?
# Примечание: если обособление чисел кавычками не будет получаться - можете вернуться к его реализации позже. 
# Главное: дополнить числа до двух разрядов нулём!

temperature = ['в', '5', 'часов', '17', 'минут', 'температура', 'воздуха', 'была', '+5', 'градусов']
temperature_with_digits = []

for i in temperature:
    if len(i) > 1 and i[1:].isdigit() and not i[0].isdigit():
        if len(i[1:]) == 1:
            temperature_with_digits.append(' "')
            temperature_with_digits.append(f"{i[0]}0{i[1:]}")
            temperature_with_digits.append('"')
        else:
            temperature_with_digits.append(' "')
            temperature_with_digits.append(i[1:])
            temperature_with_digits.append('"')
    elif i.isdigit() and len(i) == 1:
        temperature_with_digits.append(' "')    
        temperature_with_digits.append(f"0{i}")
        temperature_with_digits.append('"')
    elif i.isdigit() and len(i) > 1:
        temperature_with_digits.append(' "')
        temperature_with_digits.append(i)
        temperature_with_digits.append('"')
    else:
        if temperature.index(i) == 0:
            temperature_with_digits.append(i)
        else:
            temperature_with_digits.append(f" {i}")
        
print(''.join(temperature_with_digits))