--
-- KLS_BILL_POS_TYPE  (Table) 
--
CREATE TABLE MASTER.KLS_BILL_POS_TYPE
(
  ID         NUMBER(10)                         NOT NULL,
  NAME       VARCHAR2(50 BYTE),
  DEST_NAME  VARCHAR2(50 BYTE)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON TABLE MASTER.KLS_BILL_POS_TYPE IS '�������� ���������� ��������';

COMMENT ON COLUMN MASTER.KLS_BILL_POS_TYPE.DEST_NAME IS '��� ���������� �������';


