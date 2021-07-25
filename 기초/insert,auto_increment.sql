INSERT [INTO] 테이블[(열1,열2,...)] VALUES (값1,값2,...)

USE shopdb;
CREATE TABLE testTBL1 (id int, userName char(3), age int);
INSERT INTO testTBL1 VALUES (1, '홍길동', 25);

INSERT INTO testTBL1(id, userName) VALUES (2, 'abc');

INSERT INTO testTBL1(userName, age, id) VALUES ('def',26,3);

USE shopdb;
CREATE TABLE testtbl2 (
id int AUTO_INCREMENT PRIMARY KEY,
userName char(3),
age int);

INSERT INTO testtbl2 VALUES (NULL, '지민', 25);
INSERT INTO testtbl2 VALUES (NULL, '유나', 22);
INSERT INTO testtbl2 VALUES (NULL, '유경', 21);

USE shopdb;
CREATE TABLE testtbl3;
(
id int AUTO_INCREMENT PRIMARY KEY;
userName char(3),
age int
);
ALTER TABLE testtbl AUTO_INCREMENT=1000;
SET @@auto_increment_increment=3;

INSERT INTO testtbl3 VALUES (NULL, 'a', 17);
INSERT INTO testtbl3 VALUES (NULL, 'b', 20);
INSERT INTO testtbl3 VALUES (NULL, 'c', 18);

INSERT INTO 테이블이름 (열1, 열2, ...)
	SELECT문;

USE shopdb;
CREATE TABLE testtbl4 (id int, Fname varchar(50), Lname varchar(50));
INSERT INTO testtbl4
	SELECT column1, column2, column3
    FROM testtbl3;

USE shopdb;
CREATE TABLE testtbl5
(
SELECT column1, column2, column3 FROM testtbl3
);