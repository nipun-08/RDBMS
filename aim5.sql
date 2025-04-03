use university;
show tables;
select concat(name," earns ",salary)as 'empsal' from instructors;
select substr(name,5,3) from instructors;
select trim("  Hello SQL  ") as trim;
select rtrim("  Hello SQL  ") as ltrimm;
select ltrim("  Hello SQL  ") as rtrimm;
select length(salary) from instructors;
select lpad(salary,15,'*') from instructors;
select rpad(salary,15,'*') from instructors;
select lpad(rpad(salary,15,'*'),20,'*') from instructors;
select lower(name) from students;
select upper(name) from students;
select concat(substr(name,1,1),lower(substr(name,2))) as 'Name' from students;
select day(dob),
month(dob),
year(dob),
dayname(dob),
monthname(dob)
from students;
select curdate(),curtime(),second(curtime());
select name, year(curdate())-year(dob) as age from students;
select name, deptid, salary,
case deptid
when 3 then salary*1.30
when 6 then salary*1.40
when 9 then salary*1.50
else salary
end
as incremented_salary
from instructors;