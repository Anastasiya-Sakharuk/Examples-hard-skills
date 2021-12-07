# Python_2 HW_1


# 1) Создать переменную типа String
str_type = 'Cat'
print(str_type, type(str_type))

# 2) Создать переменную типа Integer
int_type = 333
print(int_type, type(int_type))

# 3) Создать переменную типа Float
fl_type = 55.55
print(fl_type, type(fl_type))

# 4) Создать переменную типа Bytes
b_type = bytes(12)
print(b_type, type(b_type))

# 5) Создать переменную типа List
list_type = [str_type, [int_type, fl_type], 343, (456, 343, 'Anna')]
print(list_type, type(list_type))

# 6) Создать переменную типа Tuple
tuple_type1 = (33, 'Anastasiya', 'Alex')
tuple_type2 = list_type[3]
print(tuple_type1, type(tuple_type1), '\n', tuple_type2, type(tuple_type2))

# 7) Создать переменную типа Set
set_type1 = {10, 20, 'Stas', 'Anna'}
set_type2 = {10, 20, 'Stas', 'Anna', 20, 'Stas'}
print(set_type1, type(set_type1), '\n', set_type2, type(set_type2))

# 8. Создать переменную типа Frozen set
frozenset_type = frozenset('Anna')
print(frozenset_type, type(frozenset_type))

# 9) Создать переменную типа Dict
dict_type = {'boy1': {'age': {'data': 16,
                                'month': 12,
                            'year': 2015},
                            'name': 'Andrey'},
             'boys2': {'age': {'data': 2,
                               'month': 1,
                               'year': 2018},
                       'name': 'Misha'},
             'boy3': {'age': {'data': 6,
                              'month': 12,
                              'year': 2019},
                      'name': 'Mark'}}
print(dict_type, type(dict_type))

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(str_type, type(str_type), '\n', int_type, type(int_type), '\n', fl_type, type(fl_type), '\n', b_type, type(b_type))
print(list_type, type(list_type), '\n', tuple_type1, type(tuple_type1), '\n', set_type1, type(set_type1), '\n', frozenset_type, type(frozenset_type))
print(dict_type, type(dict_type))

# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
key1 = 'Anastasiya'
key2 = 'Sakharuk'
print(key1, key2)
print(key1+' '+key2)

# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
key1 = 'Anastasiya'
key2 = 33
print(key1, key2)

# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
key1 = 'Anastasiya'
key2 = 33
print(key1 + ' ' + str(key2))
