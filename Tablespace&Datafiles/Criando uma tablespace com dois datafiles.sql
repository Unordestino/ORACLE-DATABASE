CREATE SMALLFILE TABLESPACE minha_tablespace
DATAFILE '/u01/app/oracle/oradata/ORCL1/datafile/tbs2_base01.dbf'
SIZE 100M,
'/u01/app/oracle/oradata/ORCL1/datafile/tbs2_base01_2.dbf'
SIZE 100M
AUTOEXTEND ON
NEXT 10M
MAXSIZE UNLIMITED;