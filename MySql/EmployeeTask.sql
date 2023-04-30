create database employee;

create table empl(
empNo int not null ,
eName varchar(50) not null,
job varchar(30),
mgr int,
hiredate date,
sal double,
comm double,
deptNo int
);

insert into empl values(8369,'SMITH',"CLERK",8902,"1990-12-18",800.00,NULL,20);
insert into empl values(8499,'ANYA',"SALESMAN",8698,"1991-02-20",1600.00,300.00,30);
insert into empl values(8521,'SETH',"SALESMAN",8698,"1991-02-22",1250.00,500.00,30);
insert into empl values(8566,'MAHADEVAN',"MANAGER",8839,"1991-04-02",2985.00,NULL,20);
insert into empl values(8654,'MOMIN',"SALESMAN",8698,"1991-09-28",1250.00,1400.00,30);
insert into empl values(8698,'BINA',"MANAGER",8839,"1991-05-01",2850.00,NULL,30);
insert into empl values(8882,'SHIVANSH',"MANAGER",8839,"1991-06-09",2450.00,NULL,10);
insert into empl values(8888,'SCOTT',"ANALYST",8566,"1992-12-09",3000.00,NULL,20);
insert into empl values(8839,'AMIR',"PRESIDENT",NULL,"1991-11-18",5000.00,NULL,10);
insert into empl values(8844,'KULDEEP',"SALESMAN",8698,"1991-09-08",1500.00,0.00,30);

SELECT * FROM EMPL;

SELECT eName,sal from empl where sal>=2200;

select eName,sal from empl where sal>2500 && sal<4000;
