use university;
show tables;
desc STUDENTS;
alter table STUDENTS
change Email Emailid varchar(100);
insert into students
values(100,'James','Roy','2001-12-28','james@gmail.com',221),
(101,'Nunu','bob','2001-1-28','nunu@gmail.com',222);
select* from students;
truncate table students;
create table dummy_students
as select* from students;
show tables;
drop table dummy_students;
rename table students to stu;
rename table stu to students;
update students set StudtentId=10
where FirstName=James;
select *from students;




