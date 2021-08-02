UPDATE testtbl4
	SET Lname = '없음'
    WHERE Fname = 'abc';

USE shopdb;
UPDATE buytbl SET price = price * 1.5;


DELETE FROM 테이블이름 WHERE 조건;

DELETE FROM testtbl4 WHERE Fname = 'abc';

DELETE FROM testtbl4 WHERE Fname='abc' LIMIT 5;

INSERT IGNORE INTO testtbl VALUES('a','a','a'); -- PRIMARY KEY 중복
INSERT IGNORE INTO testtbl VALUES('b','b','b');
INSERT IGNORE INTO testtbl VALUES('c','c','c');

INSERT INTO testtbl VALUES ('a','a','a')
	ON DUPLICATE KEY UPDATE name='a' addr='a';
INSERT INTO testtbl VALUES ('b','b','b')
	ON DUPLICATE KEY UPDATE name='b' addr='b';


WITH CTE_테이블이름(열 이름)
AS
(
	<쿼리문>
)
SELECT 열 이름 FROM CTE_테이블이름;

SELECT userid AS '사용자', SUM(price*amount) AS '총구매액'
	FROM buyTBL GROUP BY userid;

SELECT * FROM abc ORDER BY 총구매액 DESC;

WITH abc(userid, total)
AS
(SELECT userid, SUM(price*amount)
	FROM buytbl GROUP BY userid)
SELECT * FROM abc ORDER BY total DESC: