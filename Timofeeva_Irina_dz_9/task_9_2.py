# Реализовать класс Road (дорога).
# определить атрибуты: length (длина), width (ширина);
# значения атрибутов должны передаваться при создании экземпляра класса;
# атрибуты сделать защищёнными;
# определить метод расчёта массы асфальта, необходимого для покрытия всей дороги;
# использовать формулу: длина * ширина * масса асфальта для покрытия одного кв. метра дороги асфальтом, 
# толщиной в 1 см * число см толщины полотна;
# проверить работу метода.
# Например: 20 м*5000 м*25 кг*5 см = 12500 т.
class Road:
    _length = 0
    _width = 0
    def __init__(self, l, d):
        self._length = l
        self._width = d

class AsphaltWeight(Road):
    __weight = 25
    __thikness = 5

    def __init__(self, _length, _width):
        super().__init__(_length, _width)

    def weight(self):
        weight_calculation = self._length * self._width * self.__weight * self.__thikness // 1000
        return print(f"{weight_calculation} т.")    

a = AsphaltWeight(20, 5000)
a.weight()
