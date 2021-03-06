# Создайте собственный класс-исключение, который должен проверять содержимое списка на наличие только чисел. Проверить работу исключения
#  на реальном примере. Запрашивать у пользователя данные и заполнять список необходимо только числами. Класс-исключение должен 
# контролировать типы данных элементов списка.
# Примечание: длина списка не фиксирована. Элементы запрашиваются бесконечно, пока пользователь сам не остановит работу скрипта, введя,
#  например, команду «stop». При этом скрипт завершается, сформированный список с числами выводится на экран.
# Подсказка: для этого задания примем, что пользователь может вводить только числа и строки. Во время ввода пользователем очередного 
# элемента необходимо реализовать проверку типа элемента. Вносить его в список, только если введено число. Класс-исключение должен 
# не позволить пользователю ввести текст (не число) и отобразить соответствующее сообщение. При этом работа скрипта не должна завершаться.
class MyError(Exception):
    def __init__(self, txt):
        self.txt = txt

a = []
while True:
    try:
        x = input('Введите натуральное число либо нажмите Enter, чтобы прекратить:')
        if x == '': break
        if x.isnumeric():
            print('numeric ',x)
            a.append(int(x))
        elif x[0] == '-':
            if x[1:].isnumeric():
                print('negative - ',x[1:])
                a.append(int(x))
        else:
            raise MyError('Введите натуральное число.')
    except MyError as err:
        print(err)
print(a)
