DELIMITER $$
CREATE PRICEDURE 스토어드 프로시저이름(IN 또는 OUT 인자)
BEGIN
	SQL문
END $$
DELIMITER ;
CALL 스토어드 프로시저이름();

USE tabledb;
DROP PROCEDURE IF EXISTS Proc1;
DELIMITER $$
CREATE PROCEDURE Proc1()
BEGIN
	SELECT * FROM usertbl;
END $$
DELIMITER ;
CALL Proc1();

ALTER PROCEDURE

DROP PROCEDURE 프로시저이름

CALL 프로시저_이름(전달 값);

OUT 출력_매개변수_이름 데이터_형식

CALL 프로시저_이름(@변수명);
SELECT @변수명;

DECLARE 액션 HANDLER FOR 오류조건 처리할_문장

DELIMITER $$
CREATE PROCEDURE Proc3(
	IN inval CHAR(5),
    OUT outval INT
)
BEGIN
	INSERT INTO test13 VALUES (inval,33);
    SELECT MAX(age) INTO outval FROM test13;
END $$
DELIMITER ;

CALL Proc3('aaa',@age);
SELECT CONCAT('가장 큰 나이는 => ',@age);