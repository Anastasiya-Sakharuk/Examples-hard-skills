-- SQL HomeWork 3

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id=salary.id 

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id=salary.id
where salary.monthly_salary < 2000

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id 
where employees.employee_name is null and salary.monthly_salary < 2000

-- 5. Найти всех работников кому не начислена ЗП.
select employees.employee_name
from employee_salary
right join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null

-- 6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id

-- 7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Java developer'

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Python developer'

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_QA engineer'

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Manual QA engineer'

-- 11. Вывести имена и должность автоматизаторов QA.
select employees.employee_name, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Automation QA engineer'

-- 12. Вывести имена и зарплаты Junior специалистов.
select employees.employee_name, roles.role_name, salary.monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior_%'


-- 13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Middle_%'

-- 14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Senior_%'

-- 15. Вывести зарплаты Java разработчиков
select roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Java developer'

-- 16. Вывести зарплаты Python разработчиков
select roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%_Python developer'

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Junior Python developer'

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Middle J%S% developer'

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Senior Java developer'

-- 20. Вывести зарплаты Junior QA инженеров
select roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Junior_%_QA engineer'

-- 21. Вывести среднюю зарплату всех Junior специалистов
select roles.role_name, AVG(salary.monthly_salary) as average_junior_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior_%'
group by roles.role_name 
order by average_junior_salary

-- 22. Вывести сумму зарплат JS разработчиков
select roles.role_name, sum(salary.monthly_salary) as sum_JS_developer_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_J%S%_developer'
group by roles.role_name 
order by sum_JSdeveloper_salary

-- 23. Вывести минимальную ЗП QA инженеров
select roles.role_name, min(salary.monthly_salary) as min_QA_engineer_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_QA engineer'
group by roles.role_name 
order by min_QA_engineer_salary 

-- 24. Вывести максимальную ЗП QA инженеров
select roles.role_name, max(salary.monthly_salary) as max_QA_engineer_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_QA engineer'
group by roles.role_name 
order by max_QA_engineer_salary 

-- 25. Вывести количество QA инженеров
select roles.role_name, count(roles.role_name) as count_QA_engineer
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_QA engineer'
group by roles.role_name 
order by count_QA_engineer

-- 26. Вывести количество Middle специалистов.
select roles.role_name, count(roles.role_name) as count_Middle
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Middle_%'
group by roles.role_name 
order by count_Middle

-- 27. Вывести количество разработчиков
select roles.role_name, count(roles.role_name) as count_developer
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_developer'
group by roles.role_name 
order by count_developer

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select roles.role_name, sum(salary.monthly_salary) as sum_developer_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_developer'
group by roles.role_name 
order by sum_developer_salary

-- или 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary.monthly_salary) as sum_developer_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_developer'

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_name, salary.monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
order by salary.monthly_salary 

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where  salary. monthly_salary between 1700 and 2300
order by salary. monthly_salary 

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where  salary. monthly_salary < 2300
order by salary. monthly_salary

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where  salary. monthly_salary in (1100, 1500, 2000)
order by salary. monthly_salary








