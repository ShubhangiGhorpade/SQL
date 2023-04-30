CREATE TABLE dateAndTime(
srNo int not null auto_increment,
names varchar(29),
age int ,
birthDate datetime,
joiningDate date,
joiningYear year,
primary key(srNo),
check(age>=20)
);

INSERT INTO dateandtime VALUES(1,'SHUBHANGI',21,'2001-10-04 08:07:00','2001-10-05','2001');

SELECT * FROM dateandtime;

SELECT current_timestamp() as CurrentDateAndTime, current_date() as todayDate, current_time() as currentTime, current_user() as currentUser;

SELECT current_date() as todayDate;

SELECT current_time() as currentTime;

SELECT current_user() as currentUser;

ALTER TABLE dateAndTime MODIFY COLUMN joiningDate DATE; 