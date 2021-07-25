CREATE DEFINER=`root`@`localhost` PROCEDURE `myProc`()
BEGIN
	SELECT * FROM memberTBL WHERE memberName = '당탕이';
    SELECT * FROM productTBL WHERE productName = '냉장고';
END -- 프로시저

DELIMITER //
CREATE TRIGGER trg_deletedMemberTBL
	AFTER DELETE
    ON memberTBL
    FOR EACH ROW
BEGIN
	INSERT INTO deleteMemberTBL VALUES (OLD.memberID, OLD.memberName, OLD.memberAddress, CURDATE());
END //
DELIMITER ; -- 트리거
