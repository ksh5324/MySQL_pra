SELECT IF (100>200, '참이다','거짓이다');

SELECT IFNULL(NULL,'null입니다'), IFNULL(100,'null이 아닙니다');

SELECT NULLIF(100,100), NULLIF(200,100);

SELECT CASE 10
      WHEN 1 THEN '일'
      WHEN 5 THEN '오'
      WHEN 10 THEN '십'
  END AS 'CASE연습';


SELECT ASCII('A'), CHAR(65);

SELECT BIT_LENGTH('abc'), CHAR_LENGTH('abc'), LENGTH('abc');
SELECT BIT_LENGTH('가나다'), CHAR_LENGTH('가나다'), LENGTH('가나다');

SELECT CONCAT_WS('/','2025','01','01');

SELECT ELT(2,'하나','둘','셋'), FILED('둘','하나','둘','셋'), FIND_IN_SET('둘','하나,둘,셋'), INSTR('하나둘셋','둘'),LOCATE('둘','하나둘셋');

SELECT FORMAT(123456.123456, 4);

SELECT BIN(31), HEX(31), OCT(31);

SELECT INSERT('abcdefghi', 3, 4, '@@@@'), INSERT('abcdefghi',3,2,'@@@@');


SELECT LEFT('abcdefghi',3), RIGHT('abcdefghi',3);

SELECT LOWER('abcdEFGH'), UPPER('abcdEFGH');

SELECT LPAD('이것이',5,'##'), RPAD('이것이',5,'##');

SELECT LTRIM('    이것이'), RTRIM('이것이    ');

SELECT TRIM('    이것이    '), TRIM(BOTH 'ㅋ' FROM 'ㅋㅋㅋ재밌어요.ㅋㅋㅋ');

SELECT REPEAT('이것이',3);

SELECT REPLACE('이것이 MySQL이다','이것이','This is');

SELECT CONCAT('이것이',SPACE(10),'MySQL이다');

SELECT SUBSTRING('대한민국만세',3,2);

SELECT SUBSTRING_INDEX('cafe.naver.com','.',2), SUBSTRING_INDEX('cafe.naver.com','.',-2);

SELECT ABS(-100);

SELECT CEILING(1.2), FLOOR(1.2), ROUND(1.2);

SELECT CONV('AA',16,2), CONV(100,10,8);

SELECT MOD(157,10), 157 % 10, 157 MOD 10;

SELECT POW(2,3), SQRT(9);

SELECT RAND(), FLOOR(1+(RAND() * (7-1));

SELECT SIGN(100), SIGN(0), SIGN(-100.123);

SELECT TRUNCATE(12345.12345, 2), TRUNCATE(12345.12345, -2);

SELECT ADDDATE('2025-01-01',INTERVAL 31 DAY), ADDDATE('2025-01-01', INTERVAL 1 MONTH);
SELECT SUBDATE('2025-01-01',INTERVAL 31 DAY), SUBDATE('2025-01-01', INTERVAL 1 MONTH);

SELECT ADDTIME('2025-01-01 23:59:59', '1:1:1'), ADDTIME('15:00:00', '2:10:10');
SELECT SUBTIME('2025-01-01 23:59:59', '1:1:1'), SUBTIME('15:00:00', '2:10:10');

SELECT YEAR(CURDATE()), MONTH(CURDATE()),DAYOFMONTH(CURDATE()); -- DAYOFMONTH == DAY
SELECT HOUR(CURTIME()), MINUTE(CURRENT_TIME()), SECOND(CURRENT_TIME), MICROSECOND(CURRENT_TIME);

SELECT DATE(NOW()), TIME(NOW());

SELECT DATEDIFF('2025-01-01', NOW()), TIMEDIFF('23:23:59','12:11:10');

SELECT DAYOFWEEK(CURDATE()), MONTHNAME(CURDATE()), DAYOFYEAR(CURDATE());

SELECT PERIOD_ADD(202501,11), PERIOD_DIFF(202501, 202312);

SELECT TIME_TO_SEC('12:11:10');

SELECT CURRENT_USER(), DATABASE();

SELECT * FROM usertbl;
SELECT FOUND_ROWS();

SELECT SLEEP(5);
SELECT '5초후에 이게 보여요';