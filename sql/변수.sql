SET @변수이름 = 변수의 값; -- 변수의 선언 및 값 대입
SELECT @변수이름; -- 변수 값 출력

USE shopdb;

SET @myVar1 = 5;
SET @myVar2 = 3;
SET @myVar3 = 4.25;
SET @myVar4 = 'abc==>';

SELECT @myVar1;
SELECT @myVar2 + @myVar3;

SELECT @myVar4, name1 FROM usertbl WHERE height > 180;

CAST (expression AS 데이터형식 [(길이)])
CONVERT (expression, 데이터형식 [(길이)])

SELECT AVG(amount) AS '평균 구매 가격' FROM buytbl;

SELECT CAST(AVG(amount) AS SIGNED INTEGER) AS '평균 구매 가격' FROM buytbl;
SELECT CONVERT(AVG(amount), SIGNED INTEGER) AS '평균 구매 가격' FROM buytbl;

SELECT CAST('2020$12$12' AS DATE);
SELECT CAST('2020/12/12' AS DATE);
SELECT CAST('2020%12%12' AS DATE);
SELECT CAST('2020@12@12' AS DATE);

SELECT '100' + '200'; -- 문자와 문자를 더함 -> 정수로 변환되서 연산됨 (300)
SELECT CONCAT('100','200'); -- 문자와 문자르 연결 (100200)
SELECT CONCAT(100,'200'); -- 정수와 문자를 연결 -> 정수가 문자로 변환 (100200)
SELECT 1 > '2mega'; -- 정수인 2로 변환되어서 비교 (0)
SELECT 3 > '2mega'; -- 정수인 2로 변환 (1)
SELECT 0 = 'mege'; -- 문자열은 0으로 반환 (1)

