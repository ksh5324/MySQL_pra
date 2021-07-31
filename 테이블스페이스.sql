SHOW VARIABLES LIKE 'innodb_data_file_path';

CREATE TABLESPACE ts_a ADD DATAFILE 'ts_a.ibd';
CREATE TABLESPACE ts_b ADD DATAFILE 'ts_b.ibd';
CREATE TABLESPACE ts_c ADD DATAFILE 'ts_c.ibd';

CREATE TABLE table_a (id INT) TABLESPACE ts_a;

ALTER TABLE table_a TABLESPACE ts_b;