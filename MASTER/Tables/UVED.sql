--
-- UVED  (Table) 
--
CREATE TABLE MASTER.UVED
(
  ID            NUMBER(10)                      NOT NULL,
  UVED_NUM      NUMBER(10),
  UVED_DATE     DATE,
  LOAD_TYPE_ID  NUMBER(10),
  MESTO_ID      NUMBER(10),
  LUKOMA_NUM    NUMBER(10),
  MPS_NUM       NUMBER(10),
  CHER_NUM      NUMBER(10),
  VETL_NUM      NUMBER(10),
  OPERSGS_ID    NUMBER(10),
  PROD_ID_NPR   VARCHAR2(5 BYTE)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON TABLE MASTER.UVED IS '����������� �� ������';

COMMENT ON COLUMN MASTER.UVED.UVED_NUM IS '� ����������� �� ������';

COMMENT ON COLUMN MASTER.UVED.UVED_DATE IS '���� �����������';

COMMENT ON COLUMN MASTER.UVED.LOAD_TYPE_ID IS '��� ���������������';

COMMENT ON COLUMN MASTER.UVED.MESTO_ID IS '����� ��������';

COMMENT ON COLUMN MASTER.UVED.LUKOMA_NUM IS '� ������ ��� ������ ���';

COMMENT ON COLUMN MASTER.UVED.MPS_NUM IS '� ���� ��� ������ ���';

COMMENT ON COLUMN MASTER.UVED.CHER_NUM IS '� ������� ��� ������-����������';

COMMENT ON COLUMN MASTER.UVED.VETL_NUM IS '� ����������� ��� ��������������� ��������';

COMMENT ON COLUMN MASTER.UVED.OPERSGS_ID IS '������������� ���';

COMMENT ON COLUMN MASTER.UVED.PROD_ID_NPR IS '����� ��������';


