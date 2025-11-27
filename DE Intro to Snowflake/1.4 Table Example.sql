CREATE DATABASE test_database;
CREATE SCHEMA test_database.test_schema;

USE DATABASE test_database;

USE SCHEMA test_schema;

CREATE TABLE TEST_TABLE (
	TEST_NUMBER NUMBER,
	TEST_VARCHAR VARCHAR,
	TEST_BOOLEAN BOOLEAN,
	TEST_DATE DATE,
	TEST_VARIANT VARIANT,
	TEST_GEOGRAPHY GEOGRAPHY
);
INSERT INTO TEST_DATABASE.TEST_SCHEMA.TEST_TABLE
  VALUES
  (28, 'ha!', True, '2024-01-01', NULL, NULL);

  SHOW SCHEMAS;


SELECT * FROM TEST_DATABASE.TEST_SCHEMA.TEST_TABLE;

---> drop the test table
DROP TABLE TEST_DATABASE.TEST_SCHEMA.TEST_TABLE;

---> see all tables in a particular schema
SHOW TABLES IN TEST_DATABASE.TEST_SCHEMA;

---> undrop the test table
UNDROP TABLE TEST_DATABASE.TEST_SCHEMA.TEST_TABLE;

SHOW TABLES IN TEST_DATABASE.TEST_SCHEMA;

SHOW TABLES;

---> see table storage metadata from the Snowflake database
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.TABLE_STORAGE_METRICS;

SHOW TABLES;

---> here’s an example of table we created previously
-- CREATE TABLE tasty_bytes.raw_pos.order_detail 
-- (
--     order_detail_id NUMBER(38,0),
--     order_id NUMBER(38,0),
--     menu_item_id NUMBER(38,0),
--     discount_id VARCHAR(16777216),
--     line_number NUMBER(38,0),
--     quantity NUMBER(5,0),
--     unit_price NUMBER(38,4),
--     price NUMBER(38,4),
--     order_item_discount_amount VARCHAR(16777216)
-- );

-- we create test_table2, then specificy with parentheses on columns (with its datatype)
CREATE TABLE TEST_TABLE2 (
	TEST_NUMBER NUMBER
);

-- insert into - 1NF manipulation to add new records
INSERT INTO TEST_DATABASE.TEST_SCHEMA.TEST_TABLE2 (TEST_NUMBER) 
VALUES (26);

  SELECT * FROM TEST_TABLE2;
  