select * from employees;
select * from roles;
select * from salary;
select * from roles_employee;
select * from employee_salary;

--1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees_name,monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id;

--2.Вывести всех работников у которых ЗП меньше 2000.

select employees_name,monthly_salary
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000;

--3.Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary
from employee_salary
join salary on employee_salary.salary_id = salary.id 
where employee_salary.employee_id >70;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employees_name,monthly_salary
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000 and employees_name is null;

--5. Найти всех работников кому не начислена ЗП

select salary_id,employees.employees_name
from employee_salary
right join employees on employee_salary.employee_id = employees.id 
where salary_id is null;

--6. Вывести всех работников с названиями их должности.

select employee_name,role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id;

--7.Вывести имена и должность только Java разработчиков.

select employee_name,role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% java developer';

-- 8.Вывести имена и должность только Python разработчиков

select employee_name, role_name
from roles_employee
join employees on roles_employee.employees_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% QA %';


--9.Вывести имена и должности всех QA инженеров

select employee_name,role_name
from roles_employee
join emloyees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% QA %';

--10.Вывеси имена и должности  QA инженеров

select employee_name,role_name
from roles_employees
join employees on roles_employees.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% Manual QA engineer';

-- 11. Вывести имена и должности автоматизаторов QA

select employee_name,role_name
from roles_employee
join employees on role_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% Automation QA engineer';


