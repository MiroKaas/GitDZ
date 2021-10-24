#2. Создать список, состоящий из кубов нечётных чисел от 1 до 1000 (куб X - третья степень числа X):
#   Вычислить сумму тех чисел из этого списка, сумма цифр которых делится нацело на 7. 
#       Например, число «19 ^ 3 = 6859» будем включать в сумму, так как 6 + 8 + 5 + 9 = 28 – делится нацело на 7. 
#       Внимание: использовать только арифметические операции!
#   К каждому элементу списка добавить 17 и заново вычислить сумму тех чисел из этого списка, сумма цифр которых делится нацело на 7.

cube_odd_number_list = []

for odd_number in range(1, 1000):
    if odd_number % 2 != 0:
        cube_odd_number_list.append(odd_number ** 3)

a_sum_list = 0

for ind in cube_odd_number_list:
    a_total = 0
    
    for i in str(ind):
        a_total += int(i)
    
    if a_total % 7 == 0:
        a_sum_list += int(ind)

print('Ответ пункта a:', a_sum_list)

b_sum_list = 0

for ind in cube_odd_number_list:
    b_total = 0
    new_ind = ind + 17
    
    for i in str(new_ind):
        b_total += int(i)
    
    if b_total % 7 == 0:
        b_sum_list += int(new_ind)

print('Ответ пункта b:', b_sum_list)
