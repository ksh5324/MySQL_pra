USE tabledb;
CREATE VIEW  viewusertbl
AS
	SELECT userID, name1, addr FROM usertbl;

SELECT * FROM viewusertbl;

CREATE VIEW viewbuytbl
AS
  SELECT A.userID, A.name, B.prodName, CONCAT(A.mobile1, A.mobile2)
  FROM usertbl A
  INNER JOIN buytbl B
  ON A.userID = B.userID;

SELECT * FROM viewbuytbl;
SELECT * FROM viewbuytbl WHERE 조건;