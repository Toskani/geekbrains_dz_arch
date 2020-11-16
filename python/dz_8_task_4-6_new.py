"""
4. Начните работу над проектом «Склад оргтехники». Создайте класс, описывающий склад.
А также класс «Оргтехника», который будет базовым для классов-наследников. Эти классы —
конкретные типы оргтехники (принтер, сканер, ксерокс). В базовом классе определить параметры,
общие для приведенных типов. В классах-наследниках реализовать параметры, уникальные для каждого типа оргтехники.
5. Продолжить работу над первым заданием. Разработать методы, отвечающие за приём оргтехники на
склад и передачу в определенное подразделение компании. Для хранения данных о наименовании и
количестве единиц оргтехники, а также других данных, можно использовать любую подходящую структуру,
например словарь.
6. Продолжить работу над вторым заданием. Реализуйте механизм валидации вводимых пользователем
данных. Например, для указания количества принтеров, отправленных на склад, нельзя использовать
строковый тип данных.
Подсказка: постарайтесь по возможности реализовать в проекте «Склад оргтехники» максимум возможностей,
изученных на уроках по ООП.
"""


class Storage:
    def __init__(self, name: str, price: int, in_stock: bool, *args):
        self.name = name
        self.price = price
        self.in_stock = in_stock
        self.my_storage_full = []
        self.my_storage = []
        self.my_copy = {'Модель устройства': self.name, 'Цена за ед': self.price, 'Количество': self.in_stock}

    def acceptance(self):
        try:
            name_1 = input(f'Введите наименование: ')
            price_1 = int(input(f'Введите цену: '))
            number_of = int(input(f'Введите количество:'))
            copy = {'Название': name_1, 'Цена': price_1, 'Количество': number_of}
            self.my_copy.update(copy)
            self.my_storage.append(self.my_copy)
            print(f'Текущий список -\n {self.my_storage}')
        except ValueError:
            return f'Ошибка типа данных'

        print(f'Для выхода - Q, продолжение - Enter')
        q = input(f'')
        if q.lower() == 'q':
            self.my_storage_full.append(self.my_storage)
            print(f'Весь склад -\n {self.my_storage_full}')
            return f'Выход'
        else:
            return Storage.acceptance(self)


class OfficeEquipment(Storage):
    division = 'Оргтехника'


class Printer(OfficeEquipment):
    def __init__(self, name: str, price: int, in_stock: bool, color: bool):
        super().__init__(name, price, in_stock)
        self.color = color
    # Пытался тут вкурить как без лишних дублирований init все раскрутить, очень долго крутил вертел, но не понял

    def __str__(self):
        return f"Данные об устройстве: категория товара - {self.division}, название - {self.name}," \
               f"цена - {self.price}, наличие - {self.in_stock}, цветной - {self.color}"


class Scanner(OfficeEquipment):
    def __init__(self, name: str, price: int, in_stock: bool, automatic: bool):
        super().__init__(name, price, in_stock)
        self.automatic = automatic

    def __str__(self):
        return f"Данные об устройстве: категория товара - {self.division}, название - {self.name}," \
               f"цена - {self.price}, наличие - {self.in_stock}, цветной - {self.automatic}"


class Xerox(OfficeEquipment):
    def __init__(self, name: str, price: int, in_stock: bool, multifunctional: bool):
        super().__init__(name, price, in_stock)
        self.multifunctional = multifunctional

    def __str__(self):
        return f"Данные об устройстве: категория товара - {self.division}, название - {self.name}," \
               f"цена - {self.price}, наличие - {self.in_stock}, цветной - {self.multifunctional}"


my_tech = Printer('Притнер', 20, True, True)
print(my_tech)
print(my_tech.acceptance())
