CREATE TABLESPACE SULBINJUNG DATAFILE 'C:\ORACLEXE\ORADATA\SULBINJUNG.DBF'
SIZE 200M
AUTOEXTEND ON NEXT 10M;

select file_name, tablespace_name from dba_data_files;
select TABLESPACE_NAME from dba_tablespaces;

CREATE USER acorngirls IDENTIFIED BY hbilab12
DEFAULT TABLESPACE SULBINJUNG
QUOTA UNLIMITED ON SULBINJUNG;

GRANT CONNECT, RESOURCE TO acorngirls;