SELECT 문장1
UNION [ALL]
SELECT 문장2

SELECT stdName, addr FROM stdtbl
UNION ALL
SELECT clubName, roomNo FROM clubtbl;

SELECT name1, CONCAT(mobile1, mobile2) AS '전화번호' FROM usertbl
WHERE name1 NOT IN (SELECT name1 FROM usertbl WHERE mobile1 IS NULL);

SELECT name1, CONCAT(mobile1, mobile2) AS '전화번호' FROM usertbl
WHERE name1 IN (SELECT name1 FROM usertbl WHERE mobile1 IS NULL);