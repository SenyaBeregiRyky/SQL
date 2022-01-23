--1.Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null


create table employees(
	id serial primary key,
	employees_name varchar(50) unique not null
);

select * from employees;

--2.Наполнить таблицу employee 70 строками.

insert into employees(employees_name)
values ('Terry Wade'),
       ('Matthew Jenkins'),
       ('Clinton Rivera'),
       ('Gary Marshall'),
       ('Paul Simmons'),
       ('Howard Phillips'),
       ('Andrew Goodman'),
       ('Joseph Long'),
       ('Robert Rose'),
       ('Roberto Johnson'),
       ('Earl Price'),
       ('David Vaughn'),
       ('Jose Johnson'),
       ('Adam Williams'),
       ('Roberto Rios'),
       ('Donald Rodriguez'),
       ('Daniel Clark'),
       ('Steven Schultz'),
       ('Terry Wilson'),
       ('Roger Brooks'),
       ('Michael Reynolds'),
       ('Matthew Jones'),
       ('Eric Johnson'),
       ('Raymond Black'),
       ('Derek Carter'),
       ('Alfred Lee'),
       ('Roy Miller'),
       ('Alfred Garner'),
       ('Alexander Clayton'),
       ('Kenneth Higgins'),
       ('William Evans'),
       ('Jeffrey Perry'),
       ('Kevin Lopez'),
       ('David Kelly'),
       ('Arthur Peterson'),
       ('Christopher Aguilar'),
       ('Anthony Ballard'),
       ('Hugh Howard'),
       ('Michael Daniels'),
       ('Tyrone Curtis'),
       ('Larry Robinson'),
       ('Darren Andrews'),
       ('Walter Jackson'),
       ('Billy Wilson'),
       ('Gregory Johnson'),
       ('Bruce Jones'),
       ('Brian Strickland'),
       ('Roy Mitchell'),
       ('Curtis Parsons'),
       ('John Hudson'),
       ('Steven Klein'),
       ('Michael Young'),
       ('George Woods'),
       ('Billy Sanchez'),
       ('Frederick Lewis'),
       ('Walter Lewis'),
       ('Sean Gonzales'),
       ('Derek Hampton'),
       ('Stephen Morgan'),
       ('Charles Parker'),
       ('Mark Cooper'),
       ('Francis Garrett'),
       ('James Bailey'),
       ('Matthew Harvey'),
       ('Frank George'),
       ('James Moss'),
       ('Jesus Thomas'),
       ('Eugene Campbell'),
       ('Mike Martin'),
       ('George Patterson');
      
      
     --3. Создать таблицу salary
       - id. Serial  primary key,
       - monthly_salary. Int, not null


      create table salary(
      	id serial primary key,
      	monthly_salary int not null
      	);

      select * from salary;
     
     --4.Наполнить таблицу salary 15 строками

     insert into salary(monthly_salary)
     values (1000),
            (1100),
            (1200),
            (1300),
            (1400),
            (1500),
            (1600),
            (1700),
            (1800),
            (1900),
            (2000),
            (2100),
            (2200),
            (2300),
            (2400);
           
     --5.Создать таблицу employee_salary
      - id. Serial  primary key,
      - employee_id. Int, not null, unique
      - salary_id. Int, not null


  create table employees_salary(
  	id serial primary key,
  	employee_id int not null unique,
  	salary_id int not null,
  	foreing key (Employee_id)
  	  references Employees (id),
  	foreing key (salary_id)
  	  references salary (id) 
  	  );



 select * from employee_salary;


   --6.Наполнить таблицу employee_salary 40 строками:
    --6.1. в 10 строк из 40 вставить несуществующие employee_id


insert into employees_salary (employees_id, salary_id)
values (1, 1),
       (2, 2), 
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 14),
       (17, 13),
       (18, 12),
       (19, 11),
       (20, 10),
       (21, 9),
       (22, 8),
       (23, 7),
       (24, 6),
       (25, 5),
       (26, 4),
       (27, 3),
       (28, 2),
       (29, 1),
       (30, 2),
       (71, 10),
       (72, 11),
       (73, 12),
       (74, 13),
       (75, 14),
       (76, 15),
       (77, 16),
       (78, 17),
       (79, 18),
       (80, 19);

--7.  Создать таблицу roles
       - id. Serial  primary key,
       - role_name. int, not null, unique      
      
      
create table roles(
	id serial primary key,
	role_name int not null unique
	);
select * from roles;


--8.Поменять тип столба role_name с int на varchar(30)

alter table roles 
    alter column role_name type varchar(30) using role_name::varchar(30);

--9.Наполнить таблицу roles 20 строками:
   
   
 insert into roles(role_name)
 values ('Junior Python developer'),
        ('Middle Python developer'),
        ('Senior Python developer'),
        ('Junior Java developer'),
        ('Middle Java developer'),
        ('Senior Java developer'),
        ('Junior JavaScript developer'),
        ('Middle JavaScript developer'),
        ('Senior JavaScript developer'),
        ('Junior Manual QA engineer'),
        ('Middle Manual QA engineer'),
        ('Senior Manual QA engineer'),
        ('Project Manager'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales manager'),
        ('Junior Automation QA engineer'),
        ('Middle Automation QA engineer'),
        ('Senior Automation QA engineer');

       select * from roles;
      
  --10.Создать таблицу roles_employee
        --id. Serial  primary key,
        --employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
       --role_id. Int, not null (внешний ключ для таблицы roles, поле id)
    

   create table roles_employee(
  	id serial primary key,
  	employees_id int not null unique,
  	foreing key (employee_id)
  	references employees (id),
  	role_id int not null
  	foreign ke (role_id)
  	references roles (id)
  	  );  
 select * from roles_employee;

--11.Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employees_id, role_id)
values (1, 1),
       (2, 2), 
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 14),
       (17, 13),
       (18, 12),
       (19, 11),
       (20, 10),
       (21, 9),
       (22, 8),
       (23, 7),
       (24, 6),
       (25, 5),
       (26, 4),
       (27, 3),
       (28, 2),
       (29, 1),
       (30, 2),
       (71, 10),
       (72, 11),
       (73, 12),
       (74, 13),
       (75, 14),
       (76, 15),
       (77, 16),
       (78, 17),
       (79, 18),
       (80, 19);

