COLUMN USERNAME FORMAT A15
COLUMN ACCOUNT_STATUS FORMAT A15

SELECT USERNAME, ACCOUNT_STATUS FROM DBA_USERS WHERE ACCOUNT_STATUS = 'OPEN' AND COMMON = 'NO';
