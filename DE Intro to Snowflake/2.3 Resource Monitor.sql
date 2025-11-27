---> create a resource monitor
CREATE RESOURCE MONITOR tasty_test_rm
WITH 
    CREDIT_QUOTA = 20 -- 20 credits
    FREQUENCY = daily -- reset the monitor daily
    START_TIMESTAMP = immediately -- begin tracking immediately
    TRIGGERS 
        ON 80 PERCENT DO NOTIFY -- notify accountadmins at 80%
        ON 100 PERCENT DO SUSPEND -- suspend warehouse at 100 percent, let queries finish
        ON 110 PERCENT DO SUSPEND_IMMEDIATE; -- suspend warehouse and cancel all queries at 110 percent

---> see all resource monitors
SHOW RESOURCE MONITORS;

---> assign a resource monitor to a warehouse
CREATE WAREHOUSE tasty_test_wh;
ALTER WAREHOUSE tasty_de_wh SET RESOURCE_MONITOR = tasty_test_rm;
SHOW RESOURCE MONITORS;

---> change the credit quota on a resource monitor
ALTER RESOURCE MONITOR tasty_test_rm
  SET CREDIT_QUOTA=30;

SHOW RESOURCE MONITORS;

---> drop a resource monitor
DROP RESOURCE MONITOR tasty_test_rm;

SHOW RESOURCE MONITORS;

CREATE RESOURCE MONITOR tasty_test_rm
WITH
    CREDIT_QUOTA = 15 -- Sets a 20-credit quota [1, 3]
    FREQUENCY = daily -- Resets the monitor daily (other options are weekly, monthly, yearly, or never) [1, 4, 8]
    START_TIMESTAMP = immediately -- Begins tracking credit consumption immediately [1, 4, 8]
    TRIGGERS
        ON 90 PERCENT DO NOTIFY -- Alerts account administrators at 80% usage [1, 3, 4]
        ON 100 PERCENT DO SUSPEND -- Suspends the warehouse(s) upon reaching 100% quota, but allows currently running queries to finish [1, 3, 4]
        ON 110 PERCENT DO SUSPEND_IMMEDIATE; -- Suspends the warehouse(s) immediately and cancels all running queries at 110% of the quota (the hard upper limit) [1, 3, 4]