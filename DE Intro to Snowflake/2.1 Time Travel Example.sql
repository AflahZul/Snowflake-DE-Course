USE DATABASE tasty_bytes;

CREATE TABLE tasty_bytes.raw_pos.truck_dev
    CLONE tasty_bytes.raw_pos.truck;
    
SELECT * FROM tasty_bytes.raw_pos.truck_dev;


SET saved_query_id = LAST_QUERY_ID();

SET saved_timestamp = CURRENT_TIMESTAMP;




UPDATE tasty_bytes.raw_pos.truck_dev AS t
    SET t.year = (YEAR(CURRENT_DATE()) + 1000);

SHOW VARIABLES;

SELECT * FROM tasty_bytes.raw_pos.truck_dev
AT(TIMESTAMP => $saved_timestamp);

SELECT * FROM tasty_bytes.raw_pos.truck_dev
BEFORE(STATEMENT => $saved_query_id);

