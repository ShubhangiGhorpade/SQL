CREATE DATABASE company;

CREATE TABLE employee(
employeeName varchar(50),
age int UNIQUE,
salary double

);

CREATE TABLE employee1(
employeeName varchar(50),
age int UNIQUE,
salary double,
timeOfComing int default 9

);

ALTER TABLE employee MODIFY COLUMN age int not null;
ALTER TABLE employee ADD column todayDate date;
ALTER TABLE employee RENAME column todayDate to joiningDate;

INSERT INTO employee VALUES("Shubhangi",22,45000);
INSERT INTO employee(age,employeeName) VALUES(23,"Shubhangi");
INSERT INTO employee1(age,employeeName) VALUES(24,"Shubhangi");
SELECT * FROM employee;