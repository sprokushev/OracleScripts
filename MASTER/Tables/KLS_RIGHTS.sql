--
-- KLS_RIGHTS  (Table) 
--
CREATE TABLE MASTER.KLS_RIGHTS
(
  ID           VARCHAR2(30 BYTE)                NOT NULL,
  DESCRIPT     VARCHAR2(80 BYTE),
  PARENT_ID    VARCHAR2(30 BYTE),
  IMAGE_INDEX  NUMBER
)
TABLESPACE USERS2
NOCOMPRESS ;

