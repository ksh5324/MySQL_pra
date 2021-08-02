DELIMITER
CREATE FUNCTION 스토어드 함수이름( 인자 )
	RETURNS 반환형식
BEGIN
	...
    RETURN 반환값;
END $$
DELIMITER ;
SELECT 스토어드함수이름();

SET GLOBAL log_bin_trust_function_creators = 1;

USE tabledb;
DELIMITER $$
CREATE FUNCTION Func1(v1 INT, v2 INT)
	RETURNS INT
BEGIN
	RETURN v1 + v2;
END $$
DELIMITER ;
SELECT Func1(1,2);