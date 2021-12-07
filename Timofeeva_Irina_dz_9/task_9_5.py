# Реализовать класс Stationery (канцелярская принадлежность).
# определить в нём атрибут title (название) и метод draw (отрисовка). Метод выводит сообщение «Запуск отрисовки»;
# создать три дочерних класса Pen (ручка), Pencil (карандаш), Handle (маркер);
# в каждом классе реализовать переопределение метода draw. Для каждого класса метод должен выводить уникальное сообщение;
# создать экземпляры классов и проверить, что выведет описанный метод для каждого экземпляра.
class Stationery:
    def __init__(self, title):
        self.title = title

    def draw(self):
        return f'Запуск отрисовки'

class Pen(Stationery):
    def __init__(self, title):
        super().__init__(title)
    
    def draw(self):
        return f'{self.title} - основное для написания'

class Pencil(Stationery):
    def __init__(self, title):
        super().__init__(title)
    
    def draw(self):
        return f'{self.title} - основное для зарисовки'

class Handle(Stationery):
    def __init__(self, title):
        super().__init__(title)
    
    def draw(self):
        return f'{self.title} - основное для выделения'

pen = Pen('Ручка')
pencil = Pencil('Карандаш')
handle = Handle('Маркер')
print(pen.draw())
print(pencil.draw())
print(handle.draw())
