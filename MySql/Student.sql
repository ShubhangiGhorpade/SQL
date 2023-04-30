create database student;

create table details(
studentName varchar(40),
phonenumber long,
email varchar(50),
address varchar(80),
collegeName varchar(100)

);
-- adding the column from another table
CREATE TABLE brand.adidas1 AS SELECT studentName FROM student.details;

-- The following are the queries to alter the table

ALTER TABLE details ADD  COLUMN countrys varchar(40);
ALTER TABLE details DROP COLUMN countrys;
ALTER TABLE details RENAME COLUMN countrys TO country;
ALTER TABLE details MODIFY COLUMN country int;  

-- INSERT the values
-- for all column
INSERT INTO details VALUES ('Shubhangi',6364123100,'shubhangi@gmail.com','near balaji temple','BGMIT');
-- for specific column
INSERT INTO tableName(phonenumber,collegeName) VALUES(9483735700,"Gogte");
SELECT * from details;-- all column
SELECT phonenumber from details;-- specific column

-- if we want to create unique values so we use unique is an (constraints) as a keyword
-- ex for constraints:UNIQUE,DEFAULT,DISTINCT
-- ex for constraints:UNIQUE,DEFAULT,DISTINCT
-- for id when we make unique then it vl not take the duplicate..

-- if we want anything that must be not equal to null we need to provide 
-- Alter table tableName Modify column columnName datatype not null.. 

select distinct eLocation from tableName;-- distinct means same vl be not printed
select * from tableName where eLocation='Bijapur' or eLocation='ITPL';-- OR- it vl print where both the value are present
																	-- AND-it vl print if it contains all the conditions
select * from tableName where not eLocation='Bijapur';-- if it is not bijapur then it vl print

select * from tableName limit 1;-- only one row gets printed
select max(colName) from tableName;-- depending upon the alphabetic order 
select min(colName) from tableName; -- depending upon the alphabetic order 
select count(colName) from tableName;-- calculates the total num of rows
select sum(colName) from tableName;-- adds the total value from the columndetails
select avg(colName) from tableName;

-- Aggregate fun: MAX,MIN and COUNT..
-- if we want to update the col and set the same values
update tableName set colName=2; -- and
update tableName set colName=3 where colName ='shubhangi';

-- auto-increment is only for num which increase by itself
-- if studentId is made auto-increment den we need to push first value den
insert into tableName(colNme1,colNme2) values('','');