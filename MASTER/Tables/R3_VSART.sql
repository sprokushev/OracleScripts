--
-- R3_VSART  (Table) 
--
CREATE TABLE MASTER.R3_VSART
(
  VBKD_VSART  VARCHAR2(3 BYTE)                  NOT NULL,
  NAME        VARCHAR2(100 BYTE),
  KERNEL_ID   NUMBER(18),
  LOAD_ABBR   VARCHAR2(3 BYTE),
  FOX_ID      NUMBER(10)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON COLUMN MASTER.R3_VSART.VBKD_VSART IS '����������� ������';

COMMENT ON COLUMN MASTER.R3_VSART.NAME IS '������������';

COMMENT ON COLUMN MASTER.R3_VSART.KERNEL_ID IS 'ID � KERNEL';


