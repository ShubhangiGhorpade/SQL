create database collection;

create table details(
eName varchar(40),
eId int not null,
adharNo int unique,
eDesignation varchar(30),
eSalary double
);

alter table details add primary key(adharNo);
alter table details drop primary key;
alter table details add primary key(eId);
alter table details add column eLocation varchar(40);

alter table details add column eMangerName varchar(15) default 'Shaanu';

alter table details rename column eId to employeeId;

insert into details values('Shubhangi',345,234,'developer',50000,'Rajajinagar','Shaanu');
insert into details values('Anita',654,4567,'testing',45000,'Marathalli','Hassu');
insert into details values('Akshata',321,676,'engineer',40000,'BTM','Darshan');
insert into details values('Hassu',243,876,'software',55000,'BTM','Akshata');
insert into details values('Shaani',143,761,'softwareDeveloper',65000,'ITPL','Shubhangi');
insert into details values('Mansik',233,2345,'Manager',60000,'Bijapur','Anita');

select count(*) from details;

select * from details where eSalary=55000;
select * from details where eLocation='BTM';

select eName,adharNo from details where eLocation='Rajajinagar';

select * from details where eLocation='Bijapur' or eLocation='ITPL';

select distinct eLocation from details;

select * from details where not eLocation='Bijapur';

select * from details limit 1;
select max(eName) from details;-- depending upon the alphabetic order 
select min(eName) from details; -- depending upon the alphabetic order 
select count(eName) from details;-- calculates the total num of rows
select sum(employeeId) from details;-- adds the total value from the columndetails

select eName from details where min(empoloyee);

