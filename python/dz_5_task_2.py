# 2. Создать текстовый файл (не программно),
# сохранить в нем несколько строк,
# выполнить подсчет количества строк,
# количества слов в каждой строке.
my_file = open('text_2.txt', 'r')
content = my_file.readlines()
print(f'Количество строк, всего: {len(content)}')
for i in range(len(content)):
    print(f'Строка {i + 1}, кол-во символов: {len(content[i])}')
my_file.close()
