# 1. Реализовать вывод информации о промежутке времени в зависимости от его продолжительности duration в секундах: 
# до минуты: <s> сек; 
# до часа: <m> мин <s> сек; 
# до суток: <h> час <m> мин <s> сек; 
# * в остальных случаях: <d> дн <h> час <m> мин <s> сек.

MINUTE = 60
HOUR = 3600
DAY = 86400

duration = int(input('Введите продолжительность в секундах: ')) 

if duration < 0:
    print('Введите значение больше нуля.')
elif 0 <= duration < 60:
    print(duration, 'сек')
elif 60 <= duration < 3600:
    print(duration // MINUTE, 'мин', duration % MINUTE, 'сек')
elif 3600 <= duration < 86400:
    print(duration // HOUR, 'час', duration % HOUR // MINUTE, 'мин', duration % HOUR % MINUTE, 'сек')
elif duration >= 86400:
    print(duration // DAY, 'дн',
        duration % DAY // HOUR, 'час',
        duration % DAY % HOUR // MINUTE, 'мин',
        duration % DAY % HOUR % MINUTE, 'сек')