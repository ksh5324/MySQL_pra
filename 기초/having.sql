SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액'
	FROM buytbl
    GROUP BY userID;

SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액'
	FROM buytbl
    WHERE SUM(price*amount) > 1000;
    GROUP BY userID;

SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액'
	FROM buytbl
    GROUP BY userID
    HAVING SUM(price*amount) > 150;

SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액'
	FROM buytbl
    GROUP BY userID
    HAVING SUM(price*amount) > 150
    ORDER BY SUM(price*amount);

SELECT num1, groupName, SUM(price*amount) AS '총구매액'
	FROM buytbl
    GROUP BY groupName, num1
    WITH ROLLUP;

SELECT groupName, SUM(price*amount) AS '총구매액'
	FROM buytbl
    GROUP BY groupName
    WITH ROLLUP;