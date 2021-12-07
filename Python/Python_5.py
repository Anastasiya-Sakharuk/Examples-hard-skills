# Python HW 5 Functions, Lists
#  - Любой начальный список минимум 70 элементов.(Есть задания где можно меньше, по усмотрению)
#  - Все результаты выводить в консоль.

# 1.Написать скрипт который создаст список целых чисел.
import random

print('***** 1 *****')

list_1 = random.sample(range(1, 80), 70)
print('list_1 = ', list_1)

# 2.Написать скрипт который создаст список целых чётных чисел.
print('')
print('***** 2 *****')

list_2 = list(range(0, 100, 2))
print('list_2 = ', list_2)

# 3.Написать скрипт который в создаст список целых нечётных чисел.
print('')
print('***** 3 *****')

list_3 = list(range(1, 100, 2))
print('list_3 = ', list_3)

# 4.Написать скрипт который из списка целых чисел выведет чётные числа.
print('')
print('***** 4 *****')

list_4 = random.sample(range(1, 80), 70)
print('list_4 = ', list_4)
list_4_new = []
for i in list_4:
    dev_i = i % 2
    if dev_i == 0:
        list_4_new.append(i)
print('list_4_new = ', list_4_new)

# 5.Написать скрипт который из списка целых чисел выведет нечётные числа.
print('')
print('***** 5 *****')

list_5 = random.sample(range(1, 80), 70)
print('list_5 = ', list_5)
list_5_new = []
for i in list_5:
    dev_i = i % 2
    if dev_i != 0:
        list_5_new.append(i)
print('list_6_new = ', list_5_new)

# 6.Написать скрипт который из списка целых чисел выведет чётные числа
# которые делятся на 5 без остатка.
print('')
print('***** 6 *****')

list_6 = random.sample(range(1, 80), 70)
print('list_6 = ', list_6)
list_6_new = []
for i in list_6:
    dev_i = i % 2
    dev_i_5 = i % 5
    if dev_i == 0 and dev_i_5 == 0:
        list_6_new.append(i)
print('list_6_new = ', list_6_new)

# 7.Написать скрипт который из списка целых чисел выведет количество  чётных чисел
# которые делятся на 5 без остатка.
print('')
print('***** 7 *****')

list_7 = random.sample(range(1, 80), 70)
print('list_7 = ', list_7)
list_7_new = []
for i in list_7:
    dev_i = i % 2
    dev_i_5 = i % 5
    if dev_i == 0 and dev_i_5 == 0:
        list_7_new.append(i)
print('list_7_new = ', list_7_new)
len_list_7_new = len(list_7_new)
print('len_list_7_new = ', len_list_7_new)

# 8.Написать скрипт который создаст список целых рандомных чисел.
print('')
print('***** 8 *****')

list_8 = []
rand = random.randint(0, 80)
for i in range(rand):
    list_8_int = random.randint(0, 80)
    list_8.append(list_8_int)
print('list_8 = ', list_8)

# 9.Написать функцию которая, получив на вход любой из выше созданных списков,
# разобьёт его списки по 5 элементов.
print('')
print('***** 9 *****')


def split(list_x):
    list_a = []
    list_b = []
    count = 0
    for i in list_x:
        count += 1
        if count < 5 and count <= len(list_x):
            list_b.append(i)
        else:
            list_b.append(i)
            list_a.append(list_b)
            list_b = []
            count = 0
    return list_a


print('Входной параметр функции', list_7)
print('Разбиение списка по 5 элементов', split(list_7))
for item in split(list_7):
    print('item = ', item)

# 10.Написать функцию которая, получив на вход список целых чисел, вернёт 2
# списка, список чётных и список нечётных чисел.
print('')
print('***** 10 *****')


def split_2(list_y):
    list_a = []
    list_b = []
    for i in list_y:
        dev_i = i % 2
        if dev_i == 0 and i <= len(list_y):
            list_a.append(i)
        else:
            list_b.append(i)
    print('Входной параметр функции', list_y)
    print('Список четных чисел', list_a)
    print('Список нечетных чисел', list_b)


split_2(list_7)

# 11.Написать скрипт который сгенерирует список под названием 5_stars из списков
# по 5 элементов целых чисел.
print('')
print('***** 11 *****')

stars_5 = []
for it in range(40):
    stars = random.sample(range(1, 100), 5)
    stars_5.append(stars)
print('stars_5 =', stars_5)
for i in stars_5:
    print('stars =', i)

# 12.Написать скрипт который выведет список из сумм каждого внутреннего списка
# из  5_stars
print('')
print('***** 12 *****')

stars_5 = []
for i in range(30):
    stars = random.sample(range(1, 30), 5)
    stars_5.append(stars)
print('stars_5 =', stars_5)
for i in stars_5:
    sum_stars = sum(i)
    print('stars =', i, 'sum_stars =', sum_stars)

# 13.Написать функцию которая на вход получает список 5_stars, а вернёт 2 списка.
# В одном списке внутренние списки из 5_stars сумма чисел которых >= 100,
# а другой сумма чисел которых < 100. Если какого-то списка не получится,
# то вместо него вернуть текст “No lists”
print('')
print('***** 13 *****')


def split_2(stars_5):
    list_a = []
    list_b = []
    for i in stars_5:
        sum_stars = sum(i)
        if sum_stars >= 100:
            list_a.append(i)
        elif sum_stars < 100:
            list_b.append(i)
        else:
            print('NO LISTS')
    print('Входной параметр функции, stars_5', stars_5)
    print('Список сумма элементов >= 100: ', list_a)
    print('Список сумма элементов < 100: ', list_b)


split_2(stars_5)

# 14.Написать функцию которая получив на вход ваш возраст, выведет вам
# через какой срок вы сумеете отложить 10 000$, 20 000$, 30 000$, 50 000$,
# 100 000$ в кубышку.
print('')
print('***** 14 *****')


def kybushka():
    try:
        age = int(input('Введите ваш возраст:'))
        money_per_month = int(input("Какие у вас уже есть накопления:"))
        money_month = int(input("Насколько увеличивается сумма каждый месяц:"))
        money_box = int(input("Введите необходимую сумму накопления:"))
        month = int(money_box / (money_per_month + money_month) + 1)
        age_end = age + month / 12
    except ValueError:
        print("Пожалуйста, введите правильное значение")
    print('Возраст, в котором нужная сумма собрана:', age_end)


kybushka()

# 16.Написать скрипт который сгенерирует список имён пользователей.
# Список имён вывести в консоль.
print('')
print('***** 16 *****')
import names

user_name = []
for i in range(0, 5):
    u_name = names.get_full_name()
    user_name.append(u_name)
print('user_name =', user_name)

# 17.Написать скрипт который сгенерирует список имён файлов.
# К каждому имени  файла надо прикрепить номер итерации цикла как порядковый номер.
print('')
print('***** 17 *****')
file_name = []
for i in range(0, 5):
    f_name = names.get_first_name()
    f_name_index = f_name + ', ' + 'index = ' + str(i)
    file_name.append(f_name_index)
print('file_name =', file_name)

# 18.Написать скрипт который сгенерирует список списков. Каждый элемент списка это
# список в котором 0-й элемент - это имя пользователя,
# а 1-й - элемент это дата регистрации.
print('')
print('***** 18 *****')
import randomtimestamp as rd
list_18 = []
for i in range(0, 5):
    u_name = names.get_full_name()
    d_reg = str(rd.random_date())
    list_18_1 = [u_name, d_reg]
    list_18.append(list_18_1)
print('data_reg =', list_18)

# 19.Написать скрипт который сгенерирует список Employees списков .
# Каждый элемент списка - это список в котором:
# 0-й - элемент - это имя пользователя,
# 1-й - элемент - это логин,
# 2-й - элемент - это пароль,
# 3-й - элемент - это email (email тоже генерировать),
# 4-й - элемент - это дата регистрации
print('')
print('***** 19 *****')
import randominfo
employees = []
for i in range(0, 5):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_pass = 'Пароль: ' + randominfo.get_otp(length=6, digit=True, alpha=True, lowercase=True, uppercase=True)
    u_email = 'E-mail: ' + name_last + '_' + name_first + '@gmail.com'
    d_reg = 'Дата регистрации: ' + str(rd.random_date())
    list_19 = [u_name, u_login, u_pass, u_email, d_reg]
    employees.append(list_19)
print('employees =', employees)

# 20.Написать скрипт который сгенерирует список family списков. Каждый элемент списка - это список в котором:
# 0-й - элемент - это логин,
# 1-й - элемент - это имя,
# 2-й - элемент - семейный статус (True, False - генерировать рандомно)
print('')
print('***** 20 *****')
family = []
for i in range(0, 5):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_status = 'Семейный статус (женат/замужем): ' + str(random.choice([True, False]))
    list_20 = [u_login, u_name, u_status]
    family.append(list_20)
print('family =', family)

# 21.Написать скрипт который сгенерирует список gender списков.
# Каждый элемент списка - это список в котором:
# 0-й - элемент - это логин,
# 1-й - элемент - это имя,
# 2-й - элемент - гендер (1-м, 0-ж)
print('')
print('***** 21 *****')
gender = []
for i in range(0, 5):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_gender = 'Пол (м/ж): ' + randominfo.get_gender(name_first)
    list_21 = [u_login, u_name, u_gender]
    gender.append(list_21)
print('gender =', gender)

# 22.Написать скрипт который сгенерирует список salary списков.
# Каждый элемент списка - это список в котором:
# 0-й - элемент - это логин,
# 1-й - элемент - это имя,
# 2-й - элемент - зарплата (генерироовать от 300$ до 5000$)
print('')
print('***** 22 *****')
salary = []
for i in range(0, 5):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_salary = 'Зарплата: ' + str(random.randint(300, 5000)) + '$'
    list_22 = [u_login, u_name, u_salary]
    salary.append(list_22)
print('salary =', salary)

# 23.Написать скрипт который создаст список имён работников из
# salary у которых ЗП от 1500$ до 3000$
print('')
print('***** 23 *****')
salary_23 = []
list_23_1 = []
for i in range(0, 10):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_salary = random.randint(300, 5000)
    list_23 = [u_login, u_name, u_salary]
    salary_23.append(list_23)
    if salary_23[i][2]>1500 and salary_23[i][2]<3000:
        i_list_23_1 = [salary_23[i][1]]
        list_23_1.append(i_list_23_1)
print('salary_23 =', salary_23)
print('Список имен пользователей, у которых зарплаты от 1500$ до 3000$ =', list_23_1)

# 24.Написать скрипт который создаст список имён мужчин из gender.
print('')
print('***** 24 *****')
gender_24 = []
men = []
for i in range(0, 10):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_gender = randominfo.get_gender(name_first)
    list_24 = [u_login, u_name, u_gender]
    gender_24.append(list_24)
    if gender_24[i][2] == 'male':
        i_list_24 = [gender_24[i][1]]
        men.append(i_list_24)
print('gender =', gender_24)
print('Список мужчин =', men)

# 25.Написать скрипт который создаст список имён женщин из gender.
print('')
print('***** 25 *****')
gender_25 = []
women = []
for i in range(0, 10):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_gender = randominfo.get_gender(name_first)
    list_25 = [u_login, u_name, u_gender]
    gender_25.append(list_25)
    if gender_25[i][2] == 'female':
        i_list_25 = [gender_25[i][1]]
        women.append(i_list_25)
print('gender =', gender_25)
print('Список женщин =', women)

# 26.Написать скрипт который создаст список имён неженатых мужчин из family.
print('')
print('***** 26 *****')
family_26 = []
men_f = []
for i in range(0, 10):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_status = str(random.choice([True, False]))
    u_gender = randominfo.get_gender(name_first)
    list_26 = [u_login, u_name, u_gender, u_status]
    family_26.append(list_26)
    if family_26[i][3] == 'False' and family_26[i][2] == 'male':
        i_list_26 = [family_26[i][1]]
        men_f.append(i_list_26)
print('family =', family_26)
print('Список неженатых мужчин =', men_f)

# 27.Написать скрипт который создаст список имён незамужних женщин из family.
print('')
print('***** 27 *****')
family_27 = []
women_f = []
for i in range(0, 10):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_status = str(random.choice([True, False]))
    u_gender = randominfo.get_gender(name_first)
    list_27 = [u_login, u_name, u_gender, u_status]
    family_27.append(list_27)
    if family_27[i][3] == 'False' and family_27[i][2] == 'female':
        i_list_27 = [family_27[i][1]]
        women_f.append(i_list_27)
print('family =', family_27)
print('Список незамужних женщин =', women_f)

# 28.Написать скрипт который создаст список имён неженатых мужчин
# с ЗП больше или равной 1500$. Используйте Employees, family, gender, salary.
# Реализуйте как скрипт, без функций.
print('')
print('***** 28 *****')
employees = []
family = []
gender = []
salary = []
men_28 = []
for i in range(0, 10):
    name_first = randominfo.get_first_name()
    name_last = randominfo.get_last_name()
    u_name = 'Имя пользователя: ' + name_first + ' ' + name_last
    u_login = 'Логин: ' + name_last
    u_pass = 'Пароль: ' + randominfo.get_otp(length=6, digit=True, alpha=True, lowercase=True, uppercase=True)
    u_email = 'E-mail: ' + name_last + '_' + name_first + '@gmail.com'
    d_reg = 'Дата регистрации: ' + str(rd.random_date())
    u_status = str(random.choice([True, False]))
    u_gender = randominfo.get_gender(name_first)
    u_salary = str(random.randint(300, 5000))
    list_28_e = [u_login, u_name, u_pass, u_email, d_reg]
    employees.append(list_28_e)
    list_28_f = [u_login, u_name, u_status]
    family.append(list_28_f)
    list_28_g = [u_login, u_name, u_gender]
    gender.append(list_28_g)
    list_28_s = [u_login, u_name, u_salary]
    salary.append(list_28_s)
    if family[i][2] == 'False' and gender[i][2] == 'male' and salary[i][2] >= '1500':
        list_28 = [employees[i][1]]
        men_28.append(list_28)
print('employees =', employees)
print('family =', family)
print('gender =', gender)
print('salary =', salary)
print('Cписок имён неженатых мужчин с ЗП больше или равной 1500$ =', men_28)

# 29.Реализуйте пункт 28 через через функции.
print('')
print('***** 29 *****')
def first_name():
    name_1 = randominfo.get_first_name()
    return name_1

def last_name():
    name_2 = randominfo.get_last_name()
    return name_2

def full_name():
    name_3 = first_name() + ' ' + last_name()
    return name_3

def user_login():
    log = last_name()
    return log

def user_password():
    u_password = randominfo.get_otp(length=6, digit=True, alpha=True, lowercase=True, uppercase=True)
    return u_password

def user_email():
    u_email = name_last + '_' + name_first + '@gmail.com'
    return user_email

def data_reg():
    u_reg = str(rd.random_date())
    return u_reg

def user_status():
    u_stat = str(random.choice([True, False]))
    return u_stat

def user_gender():
    user_gender = randominfo.get_gender(name_first)
    return user_gender

def user_salary(x, y):
    u_salary = str(random.randint(x, y))
    return u_salary


employees = []
family = []
gender = []
salary = []
men_29 = []
for i in range(0, 10):
    first_name()
    last_name()
    u_name = full_name()
    u_login = user_login()
    u_pass = user_password()
    u_email = user_email()
    d_reg = data_reg()
    u_status = user_status()
    u_gender = user_gender()
    u_salary = user_salary(300, 5000)
    list_29_e = [u_login, u_name, u_pass, u_email, d_reg]
    employees.append(list_29_e)
    list_29_f = [u_login, u_name, u_status]
    family.append(list_29_f)
    list_29_g = [u_login, u_name, u_gender]
    gender.append(list_29_g)
    list_29_s = [u_login, u_name, u_salary]
    salary.append(list_29_s)
    if family[i][2] == 'False' and gender[i][2] == 'male' and salary[i][2] >= '1500':
        list_29 = [employees[i][1]]
        men_29.append(list_29)
print('employees =', employees)
print('family =', family)
print('gender =', gender)
print('salary =', salary)
print('Cписок имён неженатых мужчин с ЗП больше или равной 1500$ =', men_29)