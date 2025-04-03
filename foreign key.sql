use university;
create table dept(
did int primary key,
dname varchar(20),
loc varchar(20)
);
create table emp(
eid int primary key,
name varchar(20),
salary decimal(8,2),
did int,
foreign key(did) references dept(did)
);
create table emp(
eid int primary key,
name varchar(20),
salary decimal(8,2),
did int,
foreign key(did) references dept(did) on delete cascade
);create table emp(
eid int primary key,
name varchar(20),
salary decimal(8,2),
did int,
foreign key(did) references dept(did) on delete set null
);
insert into dept values(10,'cse','noida'),(20,'it','delhi');
select *from dept;
insert into emp values(101,'james',5000,20);