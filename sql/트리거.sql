DELIMITER //
CREATE TRIGGER testTrigger -- 트리거 생성
    AFTER DELETE -- 삭제 후에 작동
    ON test13 -- 트리거를 부착할 테이블
    FOR EACH ROW -- 모든 행에 적용
BEGIN
	SET @a = '행이 삭제됨';
END //
DELIMITER ;

SET @a = '';
INSERT INTO test13 VALUES ('ekg', 11);
SELECT @a;
UPDATE test13 SET name1 = 'ABc' WHERE name1 = 'ABC';
SELECT @a;
DELETE FROM test13 WHERE name1 = 'ekg';
SELECT @a;

USE tabledb;
CREATE TABLE backup_test13
( name1 CHAR(8) NULL UNIQUE,
  age INT NULL,
  modType CHAR(2), -- 수정 혹은 삭제
  modDate DATE, -- 변경된 날짜
  modUser VARCHAR(256) -- 변경한 사용자
);

DELIMITER //
CREATE TRIGGER backtest13_UpdateTrigger -- 트리거 생성
	AFTER UPDATE -- 변경 후에 작동
    ON test13 -- 트리거를 부착할 테이블
    FOR EACH ROW -- 각각의 모든 행
BEGIN
	INSERT INTO backup_test13 VALUES (OLD.name1, OLD.age, '수정', CURDATE(), CURRENT_USER());
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER backtest13_DeleteTrigger -- 트리거 생성
	AFTER DELETE -- 삭제 후에 작동
    ON test13 -- 트리거를 부착할 테이블
    FOR EACH ROW -- 각각의 모든 행
BEGIN
	INSERT INTO backup_test13 VALUES (OLD.name1, OLD.age, '삭제', CURDATE(), CURRENT_USER());
END //
DELIMITER ;

UPDATE test13 SET age = 1 WHERE name1 = 'ABc';
DELETE FROM test13 WHERE name1 = 'ABB';

DELIMITER //
CREATE TRIGGER test13_InsertTrigger
	BEFORE INSERT -- 입력 전에 작동
    ON test13
    FOR EACH ROW
BEGIN
	IF NEW.age < 0 THEN
    	SET NEW.age = 0;
	END IF;
END //
DELIMITER ;

INSERT INTO test13 VALUES ('kmn',-10);

{ FOLLOW | PRECEDES } other_trigger_name