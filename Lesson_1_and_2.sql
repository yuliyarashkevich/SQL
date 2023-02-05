/*Lesson_1*/

create table salary(
	id serial primary key,
	monthly_salary int not null
);

create table roles(
	id serial primary key,
	role_title varchar(50) unique not null
);

create table roles_salary (
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

insert into salary (monthly_salary)
values (500),
		(700),
		(900),
		(1000),
		(1200),
		(1400),
		(1500),
		(1700),
		(2000);
	
insert into roles_salary (id_role, id_salary)
values (1, 1),
		(2, 3),
		(3, 7),
		(4, 1),
		(5, 5),
		(6, 8);
	
insert into roles(role_title)
values ('QA_manual_junior'),
    ('QA_manual_middle'),
    ('QA_manual_senior'),
    ('QA_automation_junior'),
    ('QA_automation_middle'),
    ('QA_automation_senior'),
    ('Java_developer_junior'),
    ('Java_developer_middle'),
    ('Java_developer_senior'),
    ('CEO'),
    ('CTO'),
    ('HR'),
    ('Manager'),
    ('Designer');
   
select * from salary;

select role_title, monthly_salary from roles_salary rs
right join salary s on  id_salary = s.id
right join roles r on id_role = r.id

alter table roles
add column parking int;

alter table roles 
rename column parking to taxi;

alter table roles 
drop column taxi;

update salary
set monthly_salary = 1600
where id = 7;

/*Lesson_2*/

create table phones_apple(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)

insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400),
    ('11', 6, 10, 700),
    ('12', 8, 12, 1000),
    ('7', 4, 12, 400),
    ('XR', 6, 12, 800),
    ('XS', 6, 12, 1000),
    ('13', 6, 12, 1500),
    ('8', 4, 10, 700),
    ('SE2020', 6, 8, 700),
    ('X65', 6, 10, 350),
    ('X75', 8, 10, 450),
    ('X85', 4, 16, 550),
    ('X95', 12, 10, 650),
    ('X105', 8, 12, 760),
    ('X115', 6, 10, 820);

create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
);

insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
    ('A50', 8, 10, 400),
    ('A52', 8, 16, 500),
    ('S20', 8, 24, 1500),
    ('S21', 8, 12, 1000),
    ('S22', 6, 12, 1200),
    ('A71', 6, 12, 1200),
    ('A91', 4, 12, 1900),
    ('A57', 8, 8, 900),
    ('A32', 8, 4, 800),
    ('A33', 8, 5, 750),
    ('A43', 8, 5, 850),
    ('A65', 6, 10, 350),
    ('A75', 8, 10, 450),
    ('A85', 4, 16, 550),
    ('A95', 12, 10, 650),
    ('A105', 8, 12, 760),
    ('A115', 6, 10, 820);

select * from phones_apple;

select price from phones_apple;
select price from phones_samsung;
select avg(price) from phones_apple;
select avg(price) from phones_samsung;
select min(price) from phones_apple;
select max(price) from phones_samsung;

select * from phones_apple
where price > (select avg(price) from phones_samsung)
order by price;

select * from phones_apple
where price in (select price from phones_samsung)
order by price;

select * from phones_samsung
where price > all(select price from phones_apple where price < 1000)
order by price;

select * from phones_samsung
where price < all(select price from phones_apple where price < 1000)
order by price;

select * from phones_samsung
where price <> all(select price from phones_apple where price < 1000)
order by price;

select * from phones_samsung
where price > any(select price from phones_apple where price < 1000)
order by price;

select * from phones_samsung
where price < any(select price from phones_apple where price < 1000)
order by price;

select * from phones_samsung
where price <> any(select price from phones_apple where price < 1000)
order by price;

select * from phones_samsung
where price  in (select price from phones_apple where price < 1000)
order by price;

select * from phones_samsung 
union
select * from phones_apple;

select ram, front_camera from phones_samsung
union all
select ram, front_camera from phones_apple;

select ram, front_camera from phones_samsung
union
select ram, front_camera from phones_apple
order by ram, front_camera;

select front_camera, count(*) from phones_samsung
group by (front_camera)
order by front_camera;