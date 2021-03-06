# 4. Написать декоратор с аргументом-функцией (callback), позволяющий валидировать входные значения функции и выбрасывать
#  исключение ValueError, если что-то не так, например:
# def val_checker...
#     ...

# @val_checker(lambda x: x > 0)
# def calc_cube(x):
#    return x ** 3

# >>> a = calc_cube(5)
# 125
# >>> a = calc_cube(-5)
# Traceback (most recent call last):
#   ...
#     raise ValueError(msg)
# ValueError: wrong val -5
# Примечание: сможете ли вы замаскировать работу декоратора?
def val_checker(call_function):
    def wrapper(args_value):
        if args_value > 0:
            return call_function(args_value)
        else:
            msg = f"wrong val {args_value}"
            raise ValueError(msg)
            
    return wrapper

@val_checker
def calc_cube(x):
   return x ** 3

a = calc_cube(5)
print(a)

a = calc_cube(-5)
print(a)