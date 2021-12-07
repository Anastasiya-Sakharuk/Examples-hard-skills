-- 1.	Создать таблицу employees. 
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

-- 2.	Наполнить таблицу employees 70 строками.

insert into employees (id, employee_name) values (default, 'Aaron');
insert into employees (id, employee_name) values (default, 'Aaron');
insert into employees (id, employee_name) values (default, 'Abigail');
insert into employees (id, employee_name) values (default, 'Adam');
insert into employees (id, employee_name) values (default, 'Ada');
insert into employees (id, employee_name) values (default, 'Alan');
insert into employees (id, employee_name) values (default, 'Adelina');
insert into employees (id, employee_name) values (default, 'Bernard');
insert into employees (id, employee_name) values (default, 'Barbara');
insert into employees (id, employee_name) values (default, 'Brandon');

insert into employees (id, employee_name) values (default, 'Brianna');
insert into employees (id, employee_name) values (default, 'Caroline');
insert into employees (id, employee_name) values (default, 'Cameron');
insert into employees (id, employee_name) values (default, 'Carl');
insert into employees (id, employee_name) values (default, 'Chloe');
insert into employees (id, employee_name) values (default, 'Christian');
insert into employees (id, employee_name) values (default, 'Christine');
insert into employees (id, employee_name) values (default, 'Daniel');
insert into employees (id, employee_name) values (default, 'Daisy');
insert into employees (id, employee_name) values (default, 'Dominic');

insert into employees (id, employee_name) values (default, 'Deborah');
insert into employees (id, employee_name) values (default, 'Donald');
insert into employees (id, employee_name) values (default, 'Diana');
insert into employees (id, employee_name) values (default, 'Edward');
insert into employees (id, employee_name) values (default, 'Eleanor');
insert into employees (id, employee_name) values (default, 'Eric');
insert into employees (id, employee_name) values (default, 'Elizabeth');
insert into employees (id, employee_name) values (default, 'Ethan');
insert into employees (id, employee_name) values (default, 'Emily');
insert into employees (id, employee_name) values (default, 'Evan');

insert into employees (id, employee_name) values (default, 'Evelyn');
insert into employees (id, employee_name) values (default, 'Francis');
insert into employees (id, employee_name) values (default, 'Fiona');
insert into employees (id, employee_name) values (default, 'Fred');
insert into employees (id, employee_name) values (default, 'Florence');
insert into employees (id, employee_name) values (default, 'Gabriel');
insert into employees (id, employee_name) values (default, 'Gloria');
insert into employees (id, employee_name) values (default, 'Gordon');
insert into employees (id, employee_name) values (default, 'Grace');
insert into employees (id, employee_name) values (default, 'Harry');

insert into employees (id, employee_name) values (default, 'Harold');
insert into employees (id, employee_name) values (default, 'Henry');
insert into employees (id, employee_name) values (default, 'Helen');
insert into employees (id, employee_name) values (default, 'Herbert');
insert into employees (id, employee_name) values (default, 'Howard');
insert into employees (id, employee_name) values (default, 'Ian');
insert into employees (id, employee_name) values (default, 'Isabel');
insert into employees (id, employee_name) values (default, 'Isaac');
insert into employees (id, employee_name) values (default, 'Jack');
insert into employees (id, employee_name) values (default, 'Jacob');

insert into employees (id, employee_name) values (default, 'James');
insert into employees (id, employee_name) values (default, 'Jane');
insert into employees (id, employee_name) values (default, 'Jeffery');
insert into employees (id, employee_name) values (default, 'Jasmine');
insert into employees (id, employee_name) values (default, 'John');
insert into employees (id, employee_name) values (default, 'Jordan');
insert into employees (id, employee_name) values (default, 'Joseph');
insert into employees (id, employee_name) values (default, 'Julia');
insert into employees (id, employee_name) values (default, 'Justin');
insert into employees (id, employee_name) values (default, 'Joyce');

insert into employees (id, employee_name) values (default, 'Kevin');
insert into employees (id, employee_name) values (default, 'Katelyn');
insert into employees (id, employee_name) values (default, 'Kyle');
insert into employees (id, employee_name) values (default, 'Katherine');
insert into employees (id, employee_name) values (default, 'Kayla');
insert into employees (id, employee_name) values (default, 'Kimberly');
insert into employees (id, employee_name) values (default, 'Lawrence');
insert into employees (id, employee_name) values (default, 'Logan');
insert into employees (id, employee_name) values (default, 'Lucas');
insert into employees (id, employee_name) values (default, 'Leonora');

select * from employees;

-- 3.	Создать таблицу salary.
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

-- 4.	Наполнить таблицу salary строками от 1000 до 2500 (включительно).

insert into salary (id, monthly_salary) values (default, 1000);
insert into salary (id, monthly_salary) values (default, 1100);
insert into salary (id, monthly_salary) values (default, 1200);
insert into salary (id, monthly_salary) values (default, 1300);
insert into salary (id, monthly_salary) values (default, 1400);

insert into salary (id, monthly_salary) values (default, 1500);
insert into salary (id, monthly_salary) values (default, 1600);
insert into salary (id, monthly_salary) values (default, 1700);
insert into salary (id, monthly_salary) values (default, 1800);
insert into salary (id, monthly_salary) values (default, 1900);

insert into salary (id, monthly_salary) values (default, 2000);
insert into salary (id, monthly_salary) values (default, 2100);
insert into salary (id, monthly_salary) values (default, 2200);
insert into salary (id, monthly_salary) values (default, 2300);
insert into salary (id, monthly_salary) values (default, 2400);

insert into salary (id, monthly_salary) values (default, 2500);

select * from salary;

-- 5.	Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null	
);

-- 6.	Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (id, employee_id, salary_id) values (default, 1, 11);
insert into employee_salary (id, employee_id, salary_id) values (default, 2, 12);
insert into employee_salary (id, employee_id, salary_id) values (default, 5, 15);
insert into employee_salary (id, employee_id, salary_id) values (default, 6, 16);
insert into employee_salary (id, employee_id, salary_id) values (default, 11, 1);
insert into employee_salary (id, employee_id, salary_id) values (default, 12, 2);
insert into employee_salary (id, employee_id, salary_id) values (default, 15, 5);
insert into employee_salary (id, employee_id, salary_id) values (default, 16, 6);
insert into employee_salary (id, employee_id, salary_id) values (default, 23, 3);
insert into employee_salary (id, employee_id, salary_id) values (default, 24, 4);

insert into employee_salary (id, employee_id, salary_id) values (default, 27, 7);
insert into employee_salary (id, employee_id, salary_id) values (default, 28, 8);
insert into employee_salary (id, employee_id, salary_id) values (default, 29, 9);
insert into employee_salary (id, employee_id, salary_id) values (default, 30, 10);
insert into employee_salary (id, employee_id, salary_id) values (default, 41, 16);
insert into employee_salary (id, employee_id, salary_id) values (default, 42, 1);
insert into employee_salary (id, employee_id, salary_id) values (default, 45, 15);
insert into employee_salary (id, employee_id, salary_id) values (default, 46, 2);
insert into employee_salary (id, employee_id, salary_id) values (default, 53, 14);
insert into employee_salary (id, employee_id, salary_id) values (default, 54, 3);

insert into employee_salary (id, employee_id, salary_id) values (default, 67, 7);
insert into employee_salary (id, employee_id, salary_id) values (default, 58, 8);
insert into employee_salary (id, employee_id, salary_id) values (default, 69, 9);
insert into employee_salary (id, employee_id, salary_id) values (default, 50, 10);
insert into employee_salary (id, employee_id, salary_id) values (default, 3, 16);
insert into employee_salary (id, employee_id, salary_id) values (default, 4, 1);
insert into employee_salary (id, employee_id, salary_id) values (default, 7, 15);
insert into employee_salary (id, employee_id, salary_id) values (default, 8, 2);
insert into employee_salary (id, employee_id, salary_id) values (default, 10, 14);
insert into employee_salary (id, employee_id, salary_id) values (default, 13, 3);

insert into employee_salary (id, employee_id, salary_id) values (default, 71, 1);
insert into employee_salary (id, employee_id, salary_id) values (default, 73, 2);
insert into employee_salary (id, employee_id, salary_id) values (default, 75, 3);
insert into employee_salary (id, employee_id, salary_id) values (default, 77, 4);
insert into employee_salary (id, employee_id, salary_id) values (default, 79, 5);
insert into employee_salary (id, employee_id, salary_id) values (default, 91, 1);
insert into employee_salary (id, employee_id, salary_id) values (default, 93, 15);
insert into employee_salary (id, employee_id, salary_id) values (default, 94, 2);
insert into employee_salary (id, employee_id, salary_id) values (default, 96, 14);
insert into employee_salary (id, employee_id, salary_id) values (default, 99, 3);

select * from employee_salary;

-- 7.	Создать таблицу roles:
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);

-- 8.	Поменять тип столба role_name с int на varchar(30).

alter table roles 
alter column role_name type varchar (30)
using role_name :: varchar (30);

-- 9.	Наполнить таблицу roles 20 строками.

insert into roles (id, role_name) values (default, 'Junior Python developer');

insert into roles (id, role_name) values (default, 'Middle Python developer');
insert into roles (id, role_name) values (default, 'Senior Python developer');
insert into roles (id, role_name) values (default, 'Junior Java developer');
insert into roles (id, role_name) values (default, 'Middle Java developer');
insert into roles (id, role_name) values (default, 'Senior Java developer');
insert into roles (id, role_name) values (default, 'Junior JavaScript developer');
insert into roles (id, role_name) values (default, 'Middle JavaScript developer');
insert into roles (id, role_name) values (default, 'Senior JavaScript developer');
insert into roles (id, role_name) values (default, 'Junior Manual QA engineer');

insert into roles (id, role_name) values (default, 'Middle Manual QA engineer');
insert into roles (id, role_name) values (default, 'Senior Manual QA engineer');
insert into roles (id, role_name) values (default, 'Project Manager');
insert into roles (id, role_name) values (default, 'Designer');
insert into roles (id, role_name) values (default, 'HR');
insert into roles (id, role_name) values (default, 'CEO');
insert into roles (id, role_name) values (default, 'Sales manager');
insert into roles (id, role_name) values (default, 'Junior Automation QA engineer');
insert into roles (id, role_name) values (default, 'Middle Automation QA engineer');
insert into roles (id, role_name) values (default, 'Senior Automation QA engineer');

select * from roles;

-- 10.	Создать таблицу roles_employee:
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees (id),
	foreign key (role_id) references roles (id)
);

-- 11.	Наполнить таблицу roles_employee 40 строками.

insert into roles_employee (id, employee_id, role_id) values (default, 1, 3);
insert into roles_employee (id, employee_id, role_id) values (default, 3, 1);
insert into roles_employee (id, employee_id, role_id) values (default, 5, 2);
insert into roles_employee (id, employee_id, role_id) values (default, 7, 4);
insert into roles_employee (id, employee_id, role_id) values (default, 9, 5);
insert into roles_employee (id, employee_id, role_id) values (default, 11, 6);
insert into roles_employee (id, employee_id, role_id) values (default, 13, 7);
insert into roles_employee (id, employee_id, role_id) values (default, 15, 8);
insert into roles_employee (id, employee_id, role_id) values (default, 17, 9);
insert into roles_employee (id, employee_id, role_id) values (default, 19, 10);

insert into roles_employee (id, employee_id, role_id) values (default, 20, 11);
insert into roles_employee (id, employee_id, role_id) values (default, 22, 12);
insert into roles_employee (id, employee_id, role_id) values (default, 24, 13);
insert into roles_employee (id, employee_id, role_id) values (default, 26, 14);
insert into roles_employee (id, employee_id, role_id) values (default, 28, 15);
insert into roles_employee (id, employee_id, role_id) values (default, 29, 16);
insert into roles_employee (id, employee_id, role_id) values (default, 31, 17);
insert into roles_employee (id, employee_id, role_id) values (default, 33, 18);
insert into roles_employee (id, employee_id, role_id) values (default, 35, 19);
insert into roles_employee (id, employee_id, role_id) values (default, 37, 20);

insert into roles_employee (id, employee_id, role_id) values (default, 41, 11);
insert into roles_employee (id, employee_id, role_id) values (default, 43, 12);
insert into roles_employee (id, employee_id, role_id) values (default, 45, 13);
insert into roles_employee (id, employee_id, role_id) values (default, 47, 14);
insert into roles_employee (id, employee_id, role_id) values (default, 49, 15);
insert into roles_employee (id, employee_id, role_id) values (default, 51, 16);
insert into roles_employee (id, employee_id, role_id) values (default, 53, 17);
insert into roles_employee (id, employee_id, role_id) values (default, 55, 18);
insert into roles_employee (id, employee_id, role_id) values (default, 57, 19);
insert into roles_employee (id, employee_id, role_id) values (default, 59, 20);

insert into roles_employee (id, employee_id, role_id) values (default, 61, 3);
insert into roles_employee (id, employee_id, role_id) values (default, 63, 1);
insert into roles_employee (id, employee_id, role_id) values (default, 65, 2);
insert into roles_employee (id, employee_id, role_id) values (default, 67, 4);
insert into roles_employee (id, employee_id, role_id) values (default, 69, 5);
insert into roles_employee (id, employee_id, role_id) values (default, 2, 6);
insert into roles_employee (id, employee_id, role_id) values (default, 4, 7);
insert into roles_employee (id, employee_id, role_id) values (default, 6, 8);
insert into roles_employee (id, employee_id, role_id) values (default, 8, 9);
insert into roles_employee (id, employee_id, role_id) values (default, 10, 10);

select * from roles_employee;
