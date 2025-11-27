CREATE WAREHOUSE warehouse_one;

SHOW warehouses;

CREATE WAREHOUSE warehouse_two;

USE WAREHOUSE warehouse_two;

SHOW warehouses;

DROP WAREHOUSE warehouse_two;

ALTER WAREHOUSE warehouse_one
SET
    WAREHOUSE_SIZE = 'SMALL',
    AUTO_SUSPEND = 120,
    AUTO_RESUME = FALSE;
    
SHOW WAREHOUSES;