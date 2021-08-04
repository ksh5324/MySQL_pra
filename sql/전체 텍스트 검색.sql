SELECT * FROM 테이블 WHERE 내용 = ' ... ';

CREATE TABLE 테이블이름 (
	...
    FULLTEXT 인덱스이름 (열 이름)
);



CREATE TABLE 테이블이름 (
	...
);
ALTER TABLE 테이블이름
	ADD FULLTEXT (열 이름);



CREATE TABLE 테이블이름 (
	...
);
CREATE FULLTEXT INDEX 인덱스이름
ON 테이블이름 (열 이름);

ALTER TABLE 테이블이름
	DROP INDEX FULLTEXT (열 이름);

MATCH (col1, col2, ...) AGAINST (expr [search_modifier]);

