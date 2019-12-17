--
-- KLS_INSURE  (Table) 
--
CREATE TABLE MASTER.KLS_INSURE
(
  ID             NUMBER(5)                      NOT NULL,
  INSURE_NUMBER  VARCHAR2(25 BYTE),
  INSURE_YEAR    NUMBER(4),
  INSURE_DATE    DATE,
  INSURE_NAME    VARCHAR2(15 BYTE),
  FULL_SUM       NUMBER(1)
)
TABLESPACE USERS2
NOCOMPRESS ;

