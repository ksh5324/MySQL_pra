DROP PROCEDURE IF EXISTS ifProc; -- 기존에 프로시저를 만들었다면 삭제하는 구문
DELIMITER $$
CREATE PROCEDURE ifProc()
BEGIN
	DECLARE var1 INT; -- 변수 선언
    SET var1 = 100; -- 변수에 값 대입
    IF var1 = 100 THEN -- 만약 var1이 100이라면
    	SELECT '100입니다.';
    ELSE
    	SELECT '100이 아닙니다.';
    END IF;
END $$
DELIMITER ;
CALL ifProc();

WHILE <부울 식> DO
	SQL 명령
END WHILE;
    
DROP PROCEDURE IF EXISTS whileProc;
DELIMITER $$
CREATE PROCEDURE whileProc()
BEGIN
	DECLARE i INT; -- 1에서 100까지 증가할 변수
    DECLARE hap INT; -- 더한 값을 누적할 변수
    SET i = 1;
    SET hap = 0;
    WHILE(i <= 100) DO
    	SET hap = hap + i;
        SET i = i + 1;
    END WHILE;
	SELECT hap;
END $$
DELIMITER ;
CALL whileProc();

DROP PROCEDURE IF EXISTS whileProc2;
DELIMITER $$
CREATE PROCEDURE whileProc2()
BEGIN
	DECLARE i INT;
    DECLARE hap INT;
    SET i = 1;
    SET hap = 0;
    
    myWhile: WHILE(i<=100) DO -- While문에 label을 지정
		IF (i%7 = 0) THEN
        	SET i = i +1;
            ITERATE myWhile;
        END IF;
        	SET hap = hap + i;
            IF (hap > 1000) THEN
            	LEAVE myWhile; -- 지정한 label문을 떠남, While 종료
            END IF;
           	SET i = i + 1;
        END WHILE;
        SELECT hap;
END $$
DELIMITER ;

CALL whileProc2();

DECLARE 액션 HANDLER 오류조건 처리할_문장;

DROP PROCEDURE IF EXISTS errorProc;
DELIMITER $$
CREATE PROCEDURE errorProc()
BEGIN
	DECLARE CONTINUE HANDLER FOR 1146 SELECT '테이블이 없어영' AS '메시지';
    SELECT * FROM noTable; -- 없는 테이블
END $$
DELIMITER ;
CALL errorProc();

DROP PROCEDURE IF EXISTS errorProc2;
DELIMITER $$
CREATE PROCEDURE errorProc2()
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
    	SHOW ERRORS;
        SELECT '오류가 발생했네요. 작업은 취소시켰습니다.' AS '메시지';
        ROLLBACK; -- 작업 롤백
    END;
    INSERT INTO usertbl VALUES('LSG', '이상구', 1988, '서울', NULL, NULL, 170, CURRENT_DATE());
END $$
DELIMITER ;
CALL errorProc2();

