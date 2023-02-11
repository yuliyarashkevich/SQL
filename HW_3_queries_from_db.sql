/* 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.*/

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on salary_1.id = employee_salary.salary_id

/* 2. Вывести всех работников, у которых ЗП меньше 2000. */

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on salary_1.id = employee_salary.salary_id
where monthly_salary < 2000

/* 3. Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно, кто её получает) */

select monthly_salary
from salary_1 
left join employee_salary on salary_1.id = employee_salary.salary_id
where salary_1.id not in(select employee_salary.salary_id from employee_salary) 

/* 4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно, кто её получает) */

select monthly_salary
from salary_1 
left join employee_salary on salary_1.id = employee_salary.salary_id
where salary_1.id not in(select employee_salary.salary_id from employee_salary) 
and monthly_salary < 2000

/* 5. Найти всех работников, кому не начислена ЗП */

select employees.id, employee_name
from employees 
left join employee_salary on employees.id = employee_id
where employees.id not in(select employee_salary.employee_id from employee_salary)

/* 6. Вывести всех работников с названиями их должности */

select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 

/* 7. Вывести имена и должность только Java разработчиков */

select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
where role_name like '%Java developer%';

/* 8. Вывести имена и должность только Python разработчиков */

select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
where role_name like '%Python%';

/* 9. Вывести имена и должность всех QA инженеров */

select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like '%QA engineer%';

/* 10. Вывести имена и должность ручных QA инженеров */

select employee_name, role_name
from employees e 
join roles_employee re  on e.id = re.employee_id 
join roles_1 r on r.id = re.role_id 
where role_name like '%Manual QA engineer%';

/* 11. Вывести имена и должность автоматизаторов QA */

select employee_name, role_name
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_1 r on r.id = re.role_id 
where role_name like '%Automation QA engineer%';

/* 12. Вывести имена и зарплаты Junior специалистов */

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on salary_1.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like 'Junior%';

/* 13. Вывести имена и зарплаты Middle специалистов */

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on salary_1.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like 'Middle%';

/* 14. Вывести имена и зарплаты Senior специалистов */

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on salary_1.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like 'Senior%';

/* 15. Вывести зарплаты Java разработчиков */

select monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on salary_1.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like '%Java %';

/* 16. Вывести зарплаты Python разработчиков */

select monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on salary_1.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like '%Python %';

/*  17. Вывести имена и зарплаты Junior Python разработчиков */

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on salary_1.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like '%Junior Python developer%';

/*  18. Вывести имена и зарплаты Middle JS разработчиков */

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on salary_1.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_1.id = roles_employee.role_id
where role_name like '%Middle JavaScript developer%';

/*  19. Вывести имена и зарплаты Senior Java разработчиков */

select employee_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%Senior Java developer%';


/* 20. Вывести зарплаты Junior QA инженеров */
select monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%Junior%QA engineer%';

/*  21. Вывести среднюю зарплату всех Junior специалистов */

select avg(monthly_salary) as monthly_salary_junior
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%Junior%';

/*  22. Вывести сумму зарплат JS разработчиков */

select sum(monthly_salary) as monthly_salary_sum_JS
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%JavaScript developer%';

/*  23. Вывести минимальную ЗП QA инженеров */

select min(monthly_salary) as monthly_salary_min_QA
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%QA engineer%';

/* 24. Вывести максимальную ЗП QA инженеров */

select max(monthly_salary) as monthly_salary_max_QA
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%QA engineer%';

/*  25. Вывести количество QA инженеров */

select count(roles_1.id)  as role_name_QA
from roles_1 
join roles_employee on roles_employee.role_id = roles_1.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA%';

/* 26. Вывести количество Middle специалистов */

select count(roles_1.id)  as role_name_middle
from roles_1 
join roles_employee on roles_employee.role_id = roles_1.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Middle%';

/*  27. Вывести количество разработчиков */

select count(roles_1.id)  as role_name_developer
from roles_1 
join roles_employee on roles_employee.role_id = roles_1.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%developer%';

/*  28. Вывести фонд (сумму) зарплаты разработчиков */

select sum(monthly_salary)  as monthly_salary_developer
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%developer%';

/*  29. Вывести имена, должности и ЗП всех специалистов по возрастанию */

select employee_name, role_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
order by monthly_salary;

/*  30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300 */

select employee_name, role_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

/* 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300 */

select employee_name, role_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where monthly_salary < 2300
order by monthly_salary;

/*  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000 */

select employee_name, role_name, monthly_salary
from employees 
join employee_salary on employees.id = employee_salary.employee_id  
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id
join roles_1 on roles_employee.role_id = roles_1.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;