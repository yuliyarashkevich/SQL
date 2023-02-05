/*1) Создать таблицу employees
- id serial primary key,
- employee_name varchar(50) not null*/

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

/*2) Наполнить таблицу employee 70 строками.*/

insert into employees(employee_name)
	values ('Reggie Batey'), 
	('Clara Poore'), 
	('Tammy Galindo'), 
	('Rickey Jones'), 
	('Jill Anspach'), 
	('Lacy Racicot'), 
	('David Macias'), 
	('Jessica Manns'), 
	('Amber Holcomb'), 
	('Betty Wells'), 
	('Miguel Fletcher'), 
	('Joseph Hodges'), 
	('Ida Bohannon'), 
	('Cindy Merrifield'), 
	('Mary Dowell'), 
	('Marie Thomas'), 
	('Donald Fierro'), 
	('Anna Wick'), 
	('Robert Harian'), 
	('Michael Mark'), 
	('Lucius Patterson'), 
	('Lorna Rose'), 
	('Karen Santiago'), 
	('Peggy Beachler'), 
	('Chester Baird'), 
	('Ronda Colley'), 
	('Robert Chapman'), 
	('Sandra Hibbard'), 
	('Steven Pagano'), 
	('Ramona Russell'), 
	('Ryan Morgan'), 
	('Shannon Daugherty'), 
	('Charlene Little'), 
	('Steve Lewandowski'), 
	('Donnie Shoemaker'), 
	('Veronica Treto'), 
	('Jonathon Belanger'), 
	('William Hughes'), 
	('Courtney Alston'), 
	('Isaac Walters'), 
	('Leon Ashcraft'), 
	('Daniel Patterson'), 
	('Randall Phillips'), 
	('James Williams'), 
	('Nancy Searles'), 
	('Edward Hilliard'), 
	('Joel Vandevelde'), 
	('Nancy Bravo'), 
	('Jesse Clark'), 
	('Gregory Magelssen'), 
	('Ella Cortez'), 
	('Michael Diaz'), 
	('Robert Walsh'), 
	('Valorie Seibert'), 
	('Yoshiko Miller'), 
	('Timothy Johnson'), 
	('Lita Webb'), 
	('Lindsay Barrera'), 
	('Jacqulyn Matthews'), 
	('Lee Rehart'), 
	('Fred Spencer'), 
	('Melinda Webster'), 
	('Shawn Pretti'), 
	('Betty Schaefer'), 
	('Barbara Teets'), 
	('Patricia Tomas'), 
	('Mattie Kelley'), 
	('Mary Yates'), 
	('Andrea Croes'), 
	('Amanda Riley');

/*3) Создать таблицу salary
- id serial primary key,
- monthly_salary int not null*/

create table salary_1(
	id serial primary key,
	monthly_salary int not null
);

/*4) Наполнить таблицу salary 15 строками:*/

insert into salary_1(monthly_salary)
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
			
/*5) Создать таблицу employee_salary
- id serial primary key,
- employee_id int not null unique
- salary_id int not null*/

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

/*6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/

insert into employee_salary(employee_id, salary_id)
	values (3, 7),
			(1, 4),
			(5, 9),
			(40, 13),
			(23, 4),
			(11, 2),
			(52, 10),
			(15, 13),
			(26, 4),
			(16, 1),
			(33, 7),
			(64, 15),
			(65, 10),
			(27, 3),
			(6, 12),
			(66, 14),
			(12, 8),
			(19, 1),
			(22, 12),
			(31, 7),
			(37, 10),
			(57, 11),
			(58, 5),
			(59, 7),
			(60, 13),
			(61, 14),
			(62, 2),
			(63, 6),
			(44, 8),
			(45, 10),
			(71, 4),
			(72, 5),
			(73, 8),
			(74, 11),
			(75, 9),
			(76, 14),
			(77, 3),
			(78, 12),
			(79, 7),
			(80, 13);
		
/*7) Создать таблицу roles
- id serial primary key,
- role_name int not null unique*/
		
create table roles_1(
	id serial primary key,
	role_name int not null unique
);

/*8) Поменять тип столба role_name с int на varchar(30)*/		
alter table roles_1 
alter column role_name type varchar(30);

/*9) Наполнить таблицу roles 20 строками:*/

insert into roles_1(role_name)
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

/*10)	Создать таблицу roles_employee
- id serial primary key,
- employee_id int not null unique (внешний ключ для таблицы employees, поле id)
- role_id int not null (внешний ключ для таблицы roles, поле id)*/
		
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles_1(id)
);

/*11)	Наполнить таблицу roles_employee 40 строками:*/

insert into roles_employee (employee_id, role_id)
	values (7, 2),
			(20, 4),
			(3, 9),
			(5, 13),
			(23, 4),
			(11, 2),
			(10, 9),
			(22, 13),
			(21, 3),
			(34, 4),
			(6, 7),
			(2, 20),
			(4, 19),
			(67, 14),
			(9, 10),
			(68, 11),
			(15, 12),
			(12, 13),
			(8, 15),
			(25, 18),
			(30, 17),
			(31, 1),
			(32, 6),
			(33, 9),
			(39, 4), 
			(26, 13),
			(27, 10),
			(28, 16),
			(29, 14),
			(18, 7),
			(40, 2),
			(41, 8),
			(45, 4),
			(46, 16),
			(47, 17),
			(50, 9),
			(51, 10),
			(53, 12),
			(54, 20),
			(55, 19);
		
select * from employee_salary