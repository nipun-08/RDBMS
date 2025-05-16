create database attmgmt;
use attmgmt;
-- Department Table
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL
);

-- Student Table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Department_ID INT,
    Semester INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Faculty Table
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Course Table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
    Department_ID INT,
    Semester INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Faculty-Course Assignment Table (Many-to-Many)
CREATE TABLE Faculty_Course (
    Faculty_ID INT,
    Course_ID INT,
    PRIMARY KEY (Faculty_ID, Course_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

-- Attendance Table
CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY AUTO_INCREMENT,
    Student_ID INT,
    Course_ID INT,
    Date DATE,
    Status ENUM('Present', 'Absent'),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
INSERT INTO Department (Department_ID, Department_Name) VALUES (1, 'CSE');
INSERT INTO Department (Department_ID, Department_Name) VALUES (2, 'Civil');
INSERT INTO Department (Department_ID, Department_Name) VALUES (3, 'Electrical');
INSERT INTO Department (Department_ID, Department_Name) VALUES (4, 'Mechanical');
INSERT INTO Department (Department_ID, Department_Name) VALUES (5, 'IT');
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (1, 'Alicia Blake', 'charlesthomas@gmail.com', 4);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (2, 'Anna Carter', 'juliemartin@francis.com', 4);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (3, 'Tammy Jones', 'kari83@dean.com', 2);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (4, 'Brian Bolton', 'donaldfranklin@hartman.com', 1);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (5, 'Lori Washington', 'johnny19@cross.net', 1);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (6, 'Ronald Thompson', 'stephen18@jones.com', 1);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (7, 'Patrick Campbell', 'ashley54@hotmail.com', 2);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (8, 'Kenneth Miranda', 'riverajennifer@gmail.com', 3);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (9, 'Ashley Garcia', 'michaelhinton@jordan.com', 1);
INSERT INTO Faculty (Faculty_ID, Name, Email, Department_ID) VALUES (10, 'Michael Steele', 'fchen@booth-mcgee.com', 2);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (1, 'C++', 5, 2);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (2, 'Python', 1, 6);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (3, 'RDBMS', 4, 8);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (4, 'OS', 2, 7);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (5, 'Civil', 1, 7);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (6, 'Engines', 2, 8);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (7, 'Physics', 5, 4);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (8, 'Chemistry', 3, 8);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (9, 'Mathematics', 4, 1);
INSERT INTO Course (Course_ID, Course_Name, Department_ID, Semester) VALUES (10, 'AI/ML', 4, 1);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (3, 8);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (3, 7);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (5, 2);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (8, 4);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (3, 2);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (5, 3);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (2, 3);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (4, 9);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (8, 5);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (7, 10);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (6, 7);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (10, 3);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (6, 5);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (7, 4);
INSERT INTO Faculty_Course (Faculty_ID, Course_ID) VALUES (8, 1);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (1, 'Larry Kelly', 'sramirez@haynes.biz', 3, 6);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (2, 'Abigail Matthews', 'mullinsjacob@fuentes.com', 2, 3);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (3, 'Robert Barnes', 'qestes@watson-williamson.net', 5, 3);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (4, 'Steven Baker', 'angela86@rodriguez.com', 1, 4);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (5, 'Whitney Thompson', 'caroline44@brown-hernandez.com', 5, 6);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (6, 'Cynthia Grant', 'oliviahahn@gmail.com', 1, 7);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (7, 'Daryl Edwards', 'nicholssarah@peters.com', 1, 3);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (8, 'Candice Graham', 'uwilliams@moore.com', 2, 5);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (9, 'Melissa Tran', 'mallen@rios.org', 3, 1);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (10, 'Karen Johnson', 'katiekelly@fitzgerald-ortiz.com', 3, 4);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (11, 'John Jennings', 'ggraham@gmail.com', 2, 6);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (12, 'Patricia Chase MD', 'aaron86@yahoo.com', 4, 1);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (13, 'Andrew Harmon', 'frederickvance@hotmail.com', 4, 3);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (14, 'Stephanie Jennings', 'gduran@green.org', 3, 5);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (15, 'Jonathan Butler', 'pholden@hotmail.com', 5, 8);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (16, 'William Mcintyre', 'tanya06@gmail.com', 5, 8);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (17, 'Cheryl Clark', 'brendahubbard@russell.com', 5, 8);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (18, 'Donna Smith', 'hterry@jimenez.com', 2, 3);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (19, 'Alexander Coleman', 'perezaaron@hotmail.com', 2, 7);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (20, 'Ethan Kennedy', 'jenniferrios@bowen.com', 5, 7);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (21, 'George Chambers', 'jamesparks@carter.com', 2, 3);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (22, 'Michelle Hoffman', 'careylynn@yahoo.com', 5, 7);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (23, 'Jason Stewart', 'eric86@alvarez-miller.com', 3, 6);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (24, 'Gina Johnson', 'leblancrobert@patterson.com', 4, 8);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (25, 'Mark Neal', 'allison18@yahoo.com', 4, 7);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (26, 'Darren House', 'alvarezstephen@tapia-contreras.com', 1, 1);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (27, 'Deborah Edwards', 'vstewart@reese.com', 3, 6);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (28, 'Mr. Jason Smith Jr.', 'william92@hoffman.com', 1, 6);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (29, 'Nicole Adams', 'susan72@gmail.com', 5, 1);
INSERT INTO Student (Student_ID, Name, Email, Department_ID, Semester) VALUES (30, 'John Ward', 'johnpalmer@yahoo.com', 1, 3);
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (1, 1, 7, '2025-05-08', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (2, 1, 3, '2025-05-02', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (3, 1, 3, '2025-04-15', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (4, 1, 4, '2025-05-08', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (5, 1, 8, '2025-05-09', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (6, 2, 7, '2025-04-24', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (7, 2, 4, '2025-04-11', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (8, 2, 6, '2025-04-14', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (9, 2, 3, '2025-04-28', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (10, 2, 6, '2025-04-17', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (11, 3, 3, '2025-04-23', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (12, 3, 8, '2025-04-28', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (13, 3, 7, '2025-04-20', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (14, 3, 4, '2025-04-24', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (15, 3, 6, '2025-04-19', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (16, 4, 6, '2025-05-01', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (17, 4, 9, '2025-05-10', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (18, 4, 7, '2025-05-02', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (19, 4, 9, '2025-04-23', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (20, 4, 3, '2025-05-10', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (21, 5, 9, '2025-05-04', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (22, 5, 3, '2025-05-08', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (23, 5, 4, '2025-04-30', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (24, 5, 9, '2025-05-06', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (25, 5, 3, '2025-05-05', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (26, 6, 4, '2025-05-09', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (27, 6, 9, '2025-04-16', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (28, 6, 5, '2025-04-21', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (29, 6, 8, '2025-04-19', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (30, 6, 10, '2025-05-01', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (31, 7, 1, '2025-04-27', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (32, 7, 9, '2025-04-12', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (33, 7, 6, '2025-05-06', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (34, 7, 1, '2025-05-02', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (35, 7, 9, '2025-04-29', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (36, 8, 10, '2025-05-07', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (37, 8, 1, '2025-04-11', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (38, 8, 5, '2025-05-02', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (39, 8, 8, '2025-05-09', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (40, 8, 7, '2025-04-19', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (41, 9, 3, '2025-04-29', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (42, 9, 5, '2025-04-14', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (43, 9, 3, '2025-05-02', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (44, 9, 8, '2025-04-28', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (45, 9, 6, '2025-04-18', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (46, 10, 4, '2025-04-27', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (47, 10, 10, '2025-04-20', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (48, 10, 4, '2025-04-15', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (49, 10, 6, '2025-04-24', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (50, 10, 4, '2025-05-10', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (51, 11, 10, '2025-04-11', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (52, 11, 4, '2025-04-11', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (53, 11, 3, '2025-05-05', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (54, 11, 7, '2025-05-02', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (55, 11, 1, '2025-04-26', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (56, 12, 4, '2025-04-25', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (57, 12, 3, '2025-05-04', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (58, 12, 6, '2025-05-06', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (59, 12, 10, '2025-04-25', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (60, 12, 6, '2025-04-28', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (61, 13, 4, '2025-04-24', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (62, 13, 2, '2025-05-01', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (63, 13, 9, '2025-05-02', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (64, 13, 8, '2025-04-19', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (65, 13, 6, '2025-04-26', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (66, 14, 1, '2025-04-21', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (67, 14, 4, '2025-04-23', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (68, 14, 9, '2025-04-22', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (69, 14, 1, '2025-04-20', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (70, 14, 3, '2025-05-01', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (71, 15, 1, '2025-04-17', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (72, 15, 1, '2025-04-24', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (73, 15, 2, '2025-04-16', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (74, 15, 2, '2025-04-16', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (75, 15, 6, '2025-04-26', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (76, 16, 5, '2025-04-29', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (77, 16, 9, '2025-04-21', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (78, 16, 5, '2025-04-26', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (79, 16, 3, '2025-04-19', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (80, 16, 2, '2025-04-14', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (81, 17, 6, '2025-05-08', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (82, 17, 10, '2025-04-18', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (83, 17, 5, '2025-04-29', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (84, 17, 1, '2025-04-17', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (85, 17, 10, '2025-04-13', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (86, 18, 3, '2025-05-01', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (87, 18, 2, '2025-04-21', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (88, 18, 6, '2025-04-12', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (89, 18, 1, '2025-04-14', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (90, 18, 10, '2025-05-04', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (91, 19, 3, '2025-04-16', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (92, 19, 7, '2025-04-12', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (93, 19, 9, '2025-05-06', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (94, 19, 1, '2025-05-06', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (95, 19, 5, '2025-04-19', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (96, 20, 8, '2025-04-22', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (97, 20, 4, '2025-04-30', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (98, 20, 5, '2025-04-16', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (99, 20, 5, '2025-04-18', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (100, 20, 3, '2025-04-20', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (101, 21, 2, '2025-05-04', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (102, 21, 9, '2025-04-29', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (103, 21, 7, '2025-04-17', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (104, 21, 10, '2025-05-06', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (105, 21, 6, '2025-05-06', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (106, 22, 8, '2025-04-28', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (107, 22, 5, '2025-04-29', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (108, 22, 5, '2025-05-02', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (109, 22, 5, '2025-05-03', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (110, 22, 6, '2025-05-03', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (111, 23, 2, '2025-04-29', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (112, 23, 2, '2025-04-14', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (113, 23, 5, '2025-05-05', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (114, 23, 7, '2025-05-10', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (115, 23, 7, '2025-04-30', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (116, 24, 2, '2025-04-18', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (117, 24, 6, '2025-04-27', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (118, 24, 10, '2025-04-16', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (119, 24, 9, '2025-05-10', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (120, 24, 6, '2025-04-29', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (121, 25, 5, '2025-05-04', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (122, 25, 7, '2025-04-22', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (123, 25, 1, '2025-04-18', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (124, 25, 5, '2025-05-09', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (125, 25, 10, '2025-04-13', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (126, 26, 8, '2025-04-16', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (127, 26, 7, '2025-04-20', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (128, 26, 8, '2025-04-27', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (129, 26, 9, '2025-05-10', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (130, 26, 8, '2025-05-09', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (131, 27, 5, '2025-04-22', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (132, 27, 9, '2025-04-12', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (133, 27, 7, '2025-05-01', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (134, 27, 2, '2025-04-11', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (135, 27, 2, '2025-04-11', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (136, 28, 6, '2025-04-20', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (137, 28, 4, '2025-04-11', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (138, 28, 8, '2025-04-22', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (139, 28, 8, '2025-04-25', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (140, 28, 8, '2025-04-20', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (141, 29, 1, '2025-04-11', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (142, 29, 9, '2025-04-11', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (143, 29, 8, '2025-04-23', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (144, 29, 8, '2025-04-17', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (145, 29, 1, '2025-04-12', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (146, 30, 4, '2025-04-28', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (147, 30, 7, '2025-05-09', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (148, 30, 2, '2025-05-02', 'Absent');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (149, 30, 5, '2025-04-21', 'Present');
INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Date, Status) VALUES (150, 30, 5, '2025-04-30', 'Present');
show tables;
desc attendance

select *from attendance;
select *from course;
select *from department;
select *from faculty_course;
select *from student;

