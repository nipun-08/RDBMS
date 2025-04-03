use university;
show tables;
desc courses;
select * from courses;  # (*) helps to see all columns
select CourseID,coursename
from courses; #It helps to print column: courseid and coursename from the table courses

# select name, salary*12
#from instructors; #In this way we can get annual salary from a given salary in a column named salary*12

# select name, salary*12 as Annual_salary
#from instructors; #In this way we can get annual salary from a given salary in a column named Annual_salary

#select distinct deptid from instructors; This helps to remove the duplicacy in deptid and print one entry only once
 
#select *
#from instructors
#where deptid=1;   #helps to select from instructors where dept=1;