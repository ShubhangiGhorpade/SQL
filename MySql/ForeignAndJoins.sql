CREATE DATABASE courseWithForeign;

CREATE TABLE courseName(
srNo int NOT NULL,
courseName varchar(20),
staffName varchar(30),
primary key(srNo)
);

INSERT INTO coursename VALUES(1,'Java','Omkar');
INSERT INTO coursename VALUES(2,'Web','Shantanu');
INSERT INTO coursename VALUES(3,'SQL','Lokesh');

SELECT * FROM courseName;

CREATE TABLE studentDetails(
srNo_pk int not null,
studentName varchar(20),
codeNo_fk int,
primary key(srNo_pk),
foreign key(codeNo_fk) references coursename(srNo)
);

SELECT * FROM studentdetails;

INSERT INTO studentdetails VALUES(1,'Akshata',1);
INSERT INTO studentdetails VALUES(2,'Anita',3);
INSERT INTO studentdetails VALUES(3,'Shubhangi',2);
INSERT INTO studentdetails VALUES(4,'Savitri',3);

SELECT * FROM studentdetails left JOIN coursename on codeNo_fk=srNo;
SELECT * FROM studentdetails right JOIN coursename on codeNo_fk=srNo;