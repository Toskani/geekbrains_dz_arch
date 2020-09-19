"""
4. Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты:
speed, color, name, is_police (булево). А также методы: go, stop, turn(direction),
которые должны сообщать, что машина поехала, остановилась, повернула (куда).
Опишите несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar.
Добавьте в базовый класс метод show_speed, который должен показывать текущую
скорость автомобиля. Для классов TownCar и WorkCar переопределите метод show_speed.
При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам,
выведите результат. Выполните вызов методов и также покажите результат.
"""


class Car:
    # атрибуты
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    # методы
    def go(self):
        return f'{self.name} is going'

    def stop(self):
        return f'{self.name} is stopped'

    def turn_left(self):
        return f'{self.name} turn left'

    def turn_right(self):
        return f'{self.name} turn right'

    def turn_around(self):
        return f'{self.name} turn around'

    def show_speed(self):
        return f'{self.name} speed is {self.speed}'


class TownCar(Car):

    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        if self.speed > 60:
            return f'Your speed {self.speed} is higher, slow down'
        else:
            return f'Your speed {self.speed} is normal, keep going like this'


class SportCar(Car):

    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def my_color(self):
        return f'My car is {self.color}'

    def my_name(self):
        return f'My car is {self.name}'


class WorkCar(Car):

    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        if self.speed > 40:
            return f'Your speed {self.speed} is higher, slow down'
        else:
            return f'Your speed {self.speed} is normal, keep going like this'


class PoliceCar(Car):

    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def police(self):
        if self.is_police:
            return f'Is this my police car? {self.is_police}'
        else:
            return f'Is this my police car? {self.is_police}'


mazda_3 = TownCar(30, 'Red', 'Mazda', False)
mini_cooper = WorkCar(80, 'Blue', 'Cooper', False)
ford_mustang = SportCar(150, 'Black', 'Ford', False)
ford_focus = PoliceCar(52, 'Green', 'Ford', True)
print(mazda_3.show_speed())
print(mini_cooper.show_speed())
print(ford_mustang.my_color())
print(ford_mustang.my_name())
print(ford_focus.police())
