SELECT <열 목록>
FROM <첫 번째 테이블>
	INNER JOIN <두 번째 테이블>
    ON 조인될 조건>
[WHERE 검색 조건]

USE shopdb;
SELECT *
	FROM buytbl
    INNER JOIN usertbl
    ON buytbl.userID = usertbl.userID
    WHERE buytbl.userID = 'JYP';

SELECT *
	FROM buytbl
    INNER JOIN usertbl
    ON buytbl.userID = usertbl.userID
    ORdER BY num1;

SELECT userID, name1, prodName, addr, CONCAT(mobile1,mobile2) AS '연락처'
	FROM buytbl
    INNER JOIN usertbl
    ON buytbl.userID = usertbl.userID
    ORDER BY num1;

SELECT buytbl.userID, name1, prodName, addr, CONCAT(mobile1,mobile2) AS '연락처'
	FROM buytbl
    INNER JOIN usertbl
    ON buytbl.userID = usertbl.userID
    ORDER BY num1;

SELECT buytbl.userID, usertbl.name1, buytbl.prodName, usertbl.addr, CONCAT(usertbl.mobile1, usertbl.mobile2)
FROM buytbl
INNER JOIN usertbl
ON buytbl.userID = usertbl.userID
ORDER BY buytbl.num;

SELECT A.userID, B.name1, A.prodName, B.addr, CONCAT(B.mobile1, B.mobile2)
FROM buytbl A
INNER JOIN usertbl B
ON A.userID = B.userID
ORDER BY A.userID;

SELECT DISTINCT A.userID, B.name1,B.addr
FROM buytbl A
INNER JOIN usertbl B
ON A.userID = B.userID
ORDER BY A.userID;

SELECT <열 목록>
FROM<첫 번째 테이블(LEFT 테이블)>
<LEFT | RIGHT | FULL> OUTER JOIN <두 번째 테이블(RIGHT 테이블)>
ON <조인될 조건>
[WHERE 검색 조건];

SELECT A.userID, B.name1, A.prodName, B.addr, CONCAT(B.mobile1, B.mobile2)
FROM buytbl A
LEFT OUTER JOIN usertbl B -- LEFT OUTER JOIN(usertbl)은 왼쪽 테입르의 것은 모두 출력
ON A.userID = B.userID
ORDER BY A.userID;

SELECT A.userID, B.name1, A.prodName, B.addr, CONCAT(B.mobile1, B.mobile2)
FROM buytbl A
RIGHT OUTER JOIN usertbl B
ON A.userID = B.userID
ORDER BY A.userID;

SELECT *
FROM buytbl
CROSS JOIN usertbl;

SELECT *
FROM buytbl, usertbl

SELECT COUNT(*) AS '데이터 개수'
FROM buytbl
CROSS JOIN usertbl;