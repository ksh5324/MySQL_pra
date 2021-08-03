USE tabledb;
DELIMITER $$
CREATE PROCEDURE curProc1()
BEGIN
	DECLARE userAge INT;
    DECLARE cnt INT DEFAULT 0;
    DECLARE totalAge INT DEFAULT 0;
    DECLARE endOfRow BOOLEAN DEFAULT FALSE;
    DECLARE userCursor CURSOR FOR
    	SELECT age FROM test13;
	DECLARE CONTINUE HANDLER
    	FOR NOT FOUND SET endOfRow = TRUE;
	OPEN userCursor;

	cursor_loop: LOOP
    	FETCH userCursor INTO userAge;
        
        IF endOfRow THEN
        	LEAVE cursor_loop;
        END IF;
        
        SET cnt = cnt + 1;
        SET totalAge = totalAge + userAge;
	END LOOP cursor_loop;
    
    SELECT CONCAT('평균 나이: ',(totalAge/cnt));
    CLOSE userCursor;
END $$
DELIMITER ;

CALL curProc1();

