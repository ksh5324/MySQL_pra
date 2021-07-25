SELECT userID, amount FROM buytbl ORDER BY userID;
SELECT userID, SUM(amount) FROM buytbl GROUP BY userID;
SELECT userID AS '사용자 아이디', SUM(amount*price) AS '총 구매액' FROM buytbl GROUP BY userID;
SELECT AVG(amount) AS '평균 구매 개수' FROM buytbl;
SELECT userID, AVG(amount) AS '평균 구매 개수' FROM buytbl GROUP BY userID;
SELECT name1, MAX(height), MIN(height) FROM usertbl GROUP BY name1;
SELECT name1, height
	FROM usertbl
    WHERE height = (SELECT MAX(height) FROM usertbl)
    	OR height = (SELECT MIN(height) FROM usertbl);
SELECT COUNT(*) FROM usertbl;
SELECT COUNT(mobile1) AS '휴대폰이 있는 사용자' FROM usertbl;