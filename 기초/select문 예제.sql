CREATE TABLE usertbl (
  userID char(8) NOT NULL PRIMARY kEY,
  name varchar(10) NOT NULL,
  birthYear int NOT NULL,
  addr char(2) NOT NULL,
  mobile1 char(3) DEFAULT NULL,
  mobile2 char(8) DEFAULT NULL,
  height smallint DEFAULT NULL,
  mDate date DEFAULT NULL,
);
-- usertbl 테이블 생성

CREATE TABLE buytbl (
  num int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  userID char(8) NOT NULL,
  prodName char(6) NOT NULL,
  groupName char(4) DEFAULT NULL,
  price int NOT NULL,
  amount smallint NOT NULL,
  FOREIGN KEY (userID) REFERENCES usertbl(userID)
);
-- buytbl 테이블 생성

INSERT INTO usertbl VALUE('LSG','이승기',1987,'서울','011','11111111',182,'2008-8-8');
INSERT INTO usertbl VALUE('KBS','김범수',1979,'경남','011','22222222',173,'2012-4-4');
INSERT INTO usertbl VALUE('KKH','김경호',1971,'전남','019','33333333',177,'2007-7-7');
INSERT INTO usertbl VALUE('JYP','조용필',1950,'경기','011','44444444',166,'2009-4-4');
INSERT INTO usertbl VALUE('SSK','성시경',1979,'서울',NULL,NULL,186,'2013-12-12');
INSERT INTO usertbl VALUE('LJB','임재범',1963,'서울','016','66666666',182,'2009-9-9');
INSERT INTO usertbl VALUE('YJS','윤종신',1969,'경남',NULL,NULL,170,'2005-5-5');
INSERT INTO usertbl VALUE('EJW','은지원',1972,'경북','011','88888888',174,'2014-3-3');
INSERT INTO usertbl VALUE('JKW','조관우',1965,'경북','018','99999999',172,'2010-10-10');
INSERT INTO usertbl VALUE('BBK','바비킴',1973,'서울','010','00000000',176,'2013-5-5');

INSERT INTO buytbl VALUE(NULL,'KBS','운동화',NULL,30,2);
INSERT INTO buytbl VALUE(NULL,'KBS','노트북','전자',1000,1);
INSERT INTO buytbl VALUE(NULL,'JYP','모니터','전자',200,1);
INSERT INTO buytbl VALUE(NULL,'BBK','모니터','전자',200,5);
INSERT INTO buytbl VALUE(NULL,'KBS','청바지','의류',50,3);
INSERT INTO buytbl VALUE(NULL,'BBK','메모리','전자',80,1);
INSERT INTO buytbl VALUE(NULL,'SSK','책','서적',15,5);
INSERT INTO buytbl VALUE(NULL,'EJW','책','서적',30,2);
INSERT INTO buytbl VALUE(NULL,'EJW','청바지','의류',50,1);
INSERT INTO buytbl VALUE(NULL,'BBK','운동화',NULL,30,3);
INSERT INTO buytbl VALUE(NULL,'EJW','책','서적',15,1);
INSERT INTO buytbl VALUE(NULL,'BBK','운동화',NULL,30,2);
-- insert문

SELECT * FROM usertbl;
SELECT * FROM usertbl WHERE name = '김경호';
SELECT * FROM usertbl WHERE birthYear >= 1970 AND height >= 182;
SELECT * FROM usertbl WHERE birthYear >= 1970 OR height >= 182;
SELECT * FROM usertbl WHERE height >= 180 BETWEEN height <= 183;
SELECT * FROM usertbl WHERE height BETWEEN 180 AND 183;
SELECT * FROM usertble WHERE addr='경남' OR addr='전남' OR addr='경북';
SELECT * FROM usertbl WHERE addr IN('경남','전남','경북');
SELECT * FROM usertbl WHERE name LIKE '김%';
SELECT * FROM usertbl WHERE name LIKE '_종신';
SELECT name, height FROM usertbl WHERE height > (SELECT height FROM usertbl WHERE name = '김경호');
SELECT name, height FROM usertbl WHERE height >= (SELECT height FROM usertbl WHERE addr='경남');
SELECT name, height FROM usertbl WHERE height >= ANY(SELECT height FROM usertbl WHERE addr='경남');
