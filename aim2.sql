show databases;
create database university;
show databases;
use university;
create table Students (
StudentID int,
FirstName varchar(100),
LastName varchar(100),
DOB int,
Email varchar(100),
DepartmentID int
);
show tables;
desc Students;
alter table Students
modify DOB date;
desc Students;
alter table Students
add primary key(StudentID);
desc Students;
create table Department(
DepartmentID int primary key,
DepartmentName varchar(100),
Location varchar(100)
);
create table Courses(
CourseID int primary key,
CourseName varchar(100),
DepartmentID int,
Credits int);
create table Professors(
ProfessorID int primary key,
FirstName varchar(100),
LastName varchar(100),
Email varchar(100),
DepartmentID int
);
show tables;
drop database university;
