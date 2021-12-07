# Реализуйте базовый класс Car.
# у класса должны быть следующие атрибуты: speed, color, name, is_police(булево). А также методы: go, stop, turn(direction), 
# которые должны сообщать, что машина поехала, остановилась, повернула (куда);
# опишите несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar;
# добавьте в базовый класс метод show_speed, который должен показывать текущую скорость автомобиля;
# для классов TownCar и WorkCar переопределите метод show_speed. При значении скорости свыше 60 (TownCar) и 40 (WorkCar) 
# должно выводиться сообщение о превышении скорости.

# Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам, выведите результат. Вызовите 
# методы и покажите результат.

class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        return f'Машина {self.name} поехала'

    def stop(self):
        return f'Машина {self.name} остановилась'

    def turn_right(self):
        return f'Машина {self.name} повернула направо'

    def turn_left(self):
        return f'Машина {self.name} повернула налево'

    def show_speed(self):
        return f'Текущая скорость {self.speed}'


class TownCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        if self.speed > 40:
            return f'Внимание! Превышена скорость 40'
        else:
            return f'Текущая скорость {self.speed}'

class SportCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)


class WorkCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        
        if self.speed > 60:
            return f'Внимание! Превышена скорость 60'
        else:
            return f'Текущая скорость {self.speed}'


class PoliceCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def police(self):
        if self.is_police:
            return f'Это полицейская машина'
        else:
            return f'Это не полицеская машина'


opel = TownCar(50, 'Черный', 'Opel', False)
porsche = SportCar(300, 'Красный', 'Porsche', False)
niva = WorkCar(40, 'Серый', 'Niva', False)
lada = PoliceCar(90, 'Белый',  'Lada', True)
print(niva.show_speed())
print(niva.name)
print(porsche.show_speed())
print(opel.show_speed())
print(opel.color, opel.name)
print(lada.show_speed())
print(lada.police())
print(f'{opel.stop()} и {porsche.stop()}')
