# to perform nested queries in multiple tables
use hr;
show tables;
desc employees;
select last_name, salary
from employees where salary>
(select salary from employees where last_name="Abel");
select* from employees;employees
select last_name, hire_date, dayname(hire_date)
from employees where dayname(hire_date) =
(select dayname(hire_date) from employees where last_name="Abel");
select job_id from employees where employee_id=141;
select salary from employees where employee_id=143;
select last_name, job_id, salary from employees
where job_id=(select job_id from employees where employee_id=141) 
and salary>(select salary from employees where employee_id=143);
select avg(salary) from employees where department_id=60;
select last_name,salary from employees where salary>
(select avg(salary) from employees where department_id=60);

select manager_id from employees where last_name="Hunold";
select last_name from employees where manager_id=
(select manager_id from employees where last_name="Hunold");
select last_name, salary from employees where last_name="King";
select last_name, salary from employees where salary=
(select last_name, salary from employees where last_name="King");
select last_name, salary from employees where salary in
(select  salary from employees where last_name="King");
select max(salary) from employees where job_id='It_prog';
select last_name, salary, job_id
from employees where salary > any
(select salary from employees where job_id='It_prog')
and (job_id !='It_prog');
select last_name, salary, job_id
from employees where salary > all
(select salary from employees where job_id='It_prog')
and (job_id !='It_prog');

select max(countemp)max_emp,count(*) 
from employees 
group by dayname(hire_date);
select min(salary), department_id from employees group by department_id;
select last_name, salary from employees where salary in
(select min(salary) from employees
group by department_id);
select last_name, salary from employees where salary>any
(select avg(salary) from employees
group by department_id);

#Multicolumn Column

#pairwise comparison
select manager_id,department_id from employees
where employee_id in (174,180);
select last_name, manager_id, department_id from employees
where (manager_id, department_id) in 
(select manager_id,department_id from employees
where employee_id in (174,180));

#nonpairwise comparison
select last_name, manager_id,department_id
from employees where manager_id in 
(select manager_id
from employees
where employee_id in (174,180))
and department_id in 
(select department_id
from employees
where employee_id in (174,180));
 
 
select employees.last_name, salary, employees.department_id, avgdept.avgsal
from employees join
(select department_id, avg(salary) as avgsal
from employees group by department_id) as avgdept
on (employees.department_id=avgdept.department_id)
where employees.salary>avgdept.avgsal;

#Co related subquery
select last_name, salary
from employees outertab
where outertab.salary>(select avg(salary) as avgsal
from employees 
where department_id=outertab.department_id);




