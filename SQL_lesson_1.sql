CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);

select  * from students; 


--Таблица employees

--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null



create table employees (
	id serial primary key,
	employee_name varchar (50) not null

);

select * from employees;

drop table employees;

--Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values ('Ева'),
	   ('Марк'),
	   ('Фёдор'),
	   ('Виктор'),
	   ('Валерия'),
	   ('Александра'),
	   ('Анна'),
	   ('Павел'),
	   ('Татьяна'),
	   ('Ева'),
	   ('Асия'),
	   ('Дмитрий'),
	   ('Билал'),
	   ('Даниил'),
	   ('Борис'),
	   ('Анастасия'),
	   ('Егор'),
	   ('Ульяна'),
	   ('Александр'),
	   ('Кира'),
	   ('Илья'),
	   ('Виктория'),
	   ('Сергей'),
	   ('Иван'),
	   ('Роман'),
	   ('Ярослав'),
	   ('Елизавета'),
	   ('Давид'),
	   ('Алиса'),
	   ('Мария'),
	   ('Маргарита'),
	   ('Марта'),
	   ('Серафима'),
	   ('Артём'),
	   ('Марат'),
	   ('Семён'),
	   ('Оливия'),
	   ('Николай'),
	   ('Степан'),
	   ('Григорий'),
	   ('Амина'),
	   ('Дарья'),
	   ('Матвей'),
	   ('Максим'),
	   ('Мирон'),
	   ('Платон'),
	   ('Михаил'),
	   ('Вера'),
	   ('Кирилл'),
	   ('Алёна'),
	   ('Роберт'),
	   ('Никита'),
	   ('София'),
	   ('Николь'),
	   ('Алексей'),
	   ('Арина'),
	   ('Мирослава'),
	   ('Вероника'),
	   ('Милана'),
	   ('Марьям'),
	   ('Юлия'),
	   ('Юрий'),
	   ('Данила'),
	   ('Али'),
	   ('Элина'),
	   ('Тимур'),
	   ('Всеволод'),
	   ('Артемий'),
	   ('Евдокия'),	 
	   ('Айлин');
	   

--Таблица salary

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
	  
	  
create table salary (
	id serial primary key,
	monthly_salary int not null
);

drop table salary;

select * from salary;

--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

insert into salary (monthly_salary)
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
       (2400),
       (2500);
      
 
      
-- Таблица employee_salary

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
     
      
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

drop table employee_salary;

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (1,4),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,1),
	   (18,2),
	   (19,3),
	   (20,4),
	   (21,4),	   
	   (22,2),
	   (23,16),
	   (24,2),
	   (26,7),
	   (27,4),
	   (28,12),
	   (29,11),
	   (30,14),	   
	   (32,7),
	   (71,3),
	   (72,5),
	   (83,6),
	   (74,7),
	   (75,8),
	   (76,10),
	   (77,10),
	   (78,11),
	   (79,12),
	   (80,13);

--Таблица roles

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);

drop table roles;

select * from roles;

--Поменять тип столба role_name с int на varchar(30)
alter table roles
alter COLUMN role_name SET DATA type varchar(30);

--Наполнить таблицу roles 20 строками:

insert into roles (role_name)
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
       

-- Таблица roles_employee

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
 
   
      
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,	
	foreign key (employee_id)
		references employees (id),	
	foreign key (role_id) 
		references roles (id)
);


select * from roles_employee;

drop table roles_employee;

--Наполнить таблицу roles_employee 40 строками:   

insert into roles_employee (employee_id, role_id)
values (1,2),
	   (3,4),
	   (5,6),
	   (7,8),
	   (9,10),
	   (11,12),
	   (13,14),
	   (15,16),
	   (17,18),
	   (19,20),
	   (21,3),
	   (23,4),
	   (25,6),
	   (27,8),
	   (29,10),
	   (31,12),
	   (33,19),
	   (35,18),
	   (37,17),
	   (39,4),
	   (41,14),
	   (43,5),
	   (45,4),
	   (47,7),
	   (49,5),
	   (51,5),
	   (53,8),
	   (55,8),
	   (57,3),
	   (59,3),
	   (61,1),
	   (63,2),
	   (65,3),
	   (67,4),
	   (69,7),
	   (2,5),
	   (4,7),
	   (6,6),
	   (8,9),	   
	   (10,2);
