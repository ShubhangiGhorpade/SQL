CREATE TABLE empl(
empNo int not null,
eName varchar(30),
job varchar(20),
mgr int,
hireDate date,
sal double,
comm float,
deptNo int not null,
primary key(empNo)
);

INSERT INTO empl VALUES(8369,'SMITH','CLERK',8902,'1990-12-18',800.00,NULL,20);
INSERT INTO empl VALUES(8499,'ANYA','SALESMAN',8698,'1991-02-20',1600.00,300.00,30);
INSERT INTO empl VALUES(8521,'SETH','SALESMAN',8698,'1991-02-22',1250.00,500.00,30);
INSERT INTO empl VALUES(8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985.00,NULL,20);
INSERT INTO empl VALUES(8654,'MOMIN','SALESMAN',8698,'1991-09-28',1250.00,1400.00,30);
INSERT INTO empl VALUES(8698,'BINA','MANAGER',8839,'1991-05-01',2850.00,NULL,30);
INSERT INTO empl VALUES(8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450.00,NULL,10);
INSERT INTO empl VALUES(8888,'SCOTT','ANALYST',8566,'1992-12-09',3000.00,NULL,20);
INSERT INTO empl VALUES(8839,'AMIR','PRESIDENT',NULL,'1991-11-18',5000.00,NULL,10);
INSERT INTO empl VALUES(8844,'KULDEEP','SALESMAN',8698,'1991-09-08',1500.00,0.00,30);

SELECT count(*) FROM empl;

SELECT eName,sal FROM empl WHERE sal>=2200;

SELECT * from empl WHERE comm IS NULL;

SELECT eName,sal FROM empl WHERE sal<4000 and sal>2500;

SELECT eName,sal FROM empl WHERE not sal<4000 and sal>2500;

SELECT eName,job,sal FROM empl WHERE not job='MANAGER';

SELECT eName FROM empl WHERE eName LIKE '___A%';

SELECT eName FROM empl WHERE eName LIKE '%T';
SELECT eName FROM empl WHERE eName LIKE '%P';

SELECT * FROM empl WHERE eName LIKE '%A%';

SELECT eName FROM empl WHERE eName like 'M%N';

-- 24-04-2023:
SELECT comm,CASE WHEN comm is null then 'Not given' else comm END as abcd FROM empl; -- abcd is alia name i.e for the understanding

SELECT comm as commission FROM empl; -- alia name

SELECT sal as Salary FROM empl;

SELECT * FROM empl WHERE job in('SALESMAN','MANAGER');

SELECT * FROM empl WHERE job not in('SALESMAN','MANAGER');

SELECT * FROM empl WHERE sal between 2500 and 4000;

SELECT * FROM empl WHERE sal not between 2500 and 4000;

-- task
SELECT * FROM empl WHERE hireDate between '1990-12-18' and '1991-05-01';

SELECT deptNo as DepartmentNo FROM empl;

SELECT * FROM empl WHERE eName not in ('SMITH','ANYA');