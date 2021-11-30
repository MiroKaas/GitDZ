# 3. Написать декоратор для логирования типов позиционных аргументов функции, например:
# def type_logger...
#     ...


# @type_logger
# def calc_cube(x):
#    return x ** 3

# >>> a = calc_cube(5)
# 5: <class 'int'>
# Примечание: если аргументов несколько - выводить данные о каждом через запятую; можете ли вы вывести тип значения функции? 
# Сможете ли решить задачу для именованных аргументов? Сможете ли вы замаскировать работу декоратора? 
# Сможете ли вывести имя функции, например, в виде:
# >>> a = calc_cube(5)
# calc_cube(5: <class 'int'>)
def type_logger(call_function):
    values = []
    def wrapper(args_value):
        function_name = call_function.__name__
        args_type = type(args_value)
        value_calc = call_function(args_value)
        value_type = type(value_calc)
        values.append(f"{function_name}({args_value}: {args_type}, {value_calc}: {value_type})")
        print(values, sep=', ')
    return wrapper


@type_logger
def calc_cube(x):
   return x ** 3

y = calc_cube(3)
a = calc_cube(5)
z = calc_cube(2)
print(calc_cube)