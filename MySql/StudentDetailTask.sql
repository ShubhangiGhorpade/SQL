create database studentDetails;
create table student(
stdId int not null Primary key,
stdName varchar(30),
sex varchar(6),
percentage double,
section varchar(3),
streams varchar(10),
dob date
);

insert into student values(1,'shubhangi','female',90,'A','Science','1999-08-21');
insert into student values(2,'Akashat','female',89.9,'A','Science','2000-10-04');
insert into student values(3,'Anita','female',89.5,'A','Science','2000-09-27');
insert into student values(4,'Arun','male',92,'A','Science','1998-07-05');
insert into student values(5,'shaanu','male',98,'A','Science','1999-02-16');
insert into student values(6,'shruti','female',88,'A','Science','2001-09-01');
insert into student values(7,'Monica','female',82,'A','Science','1989-05-22');
insert into student values(8,'Trupti','female',80,'A','Science','1993-07-31');
insert into student values(9,'Teju','female',75,'B','Commerce','1992-04-06');
insert into student values(10,'Rutu','female',63,'B','Commerce','1994-04-29');
insert into student values(11,'Swapnil','male',72,'B','Science','1998-03-18');
insert into student values(12,'Omkar','male',62,'C','Science','1999-08-21');
insert into student values(13,'Tina','female',65,'B','Commerce','2003-02-18');
insert into student values(14,'Yuvaraj','male',98.5,'A','Science','2011-09-05');
insert into student values(15,'Shivaraj','male',90,'B','Science','1999-08-21');
insert into student values(16,'Sai','male',75,'C','Science','2003-04-12');
insert into student values(17,'Rajveer','male',83,'B','Commerce','1993-03-25');
insert into student values(18,'Deepraj','male',92,'A','Science','1999-05-26');
insert into student values(19,'Raj','male',85,'B','Science','1996-07-23');
insert into student values(20,'Ranjith','male',95,'A','Commerce','1997-06-13');

select stdName,dob from student;
select * from student where percentage>=80;
select stdName,streams,percentage from student where percentage>80;
select * from student where streams='science' and percentage>75;

alter table student add column age int;
alter table student  rename column age to studentWeight;
alter table student modify column studentWeight double;

update student set studentWeight=45;

select min(percentage) from student;
select max(percentage) from student;
select count(*) from student;

create table students(
id int not null auto_increment,
sName varchar(30) not null,
primary key(id) 
);

insert into students( id,sName)  values (100,'Shubhangi');
insert into students( sName)  values ('Shaanu');
insert into students( sName)  values ('Akshata');
insert into students( sName)  values ('Hassu');
insert into students( sName)  values ('Anita');

