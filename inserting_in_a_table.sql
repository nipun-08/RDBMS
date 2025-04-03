show databases;
use university;
insert into Department(DepartmentID, DepartmentName,Location) values
(1,'Computer Science','Building A'),
(2,'Mathematics','Building B'),
(3,'Physics','Building C');
desc Department;
select * from Department;
insert into Courses(CourseID, CourseName, DepartmentID,Credits) values
(101, 'Introduction to Programming',1,3),
(102,'Algebra',2,4),
(103,'Quantum Mechanics',3,4);
select * from Courses;