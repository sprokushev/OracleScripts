--
-- AZC_OPERATION_TMP  (Table) 
--
CREATE TABLE MASTER.AZC_OPERATION_TMP
(
  ID             NUMBER(15)                     NOT NULL,
  DATE_OPER      DATE,
  DENCITY        NUMBER(6,4)                    DEFAULT 0,
  VOLUME         NUMBER(10)                     DEFAULT 0,
  VES            NUMBER(12,2)                   DEFAULT 0,
  NOTE           VARCHAR2(100 BYTE),
  TYPE_OPER_ID   NUMBER(10),
  PLACE_SEND_ID  NUMBER(10),
  PROD_ID_NPR    VARCHAR2(5 BYTE),
  SOBSTV_ID      NUMBER(6),
  ORG_STRU_ID    NUMBER(10),
  SUMMA          NUMBER(10,2),
  PRICE          NUMBER(10,2),
  DISCOUNT       NUMBER(5)                      DEFAULT 0,
  DISCOUNT_TYPE  CHAR(17 BYTE),
  DATE_INTO      DATE                           DEFAULT SYSDATE
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON COLUMN MASTER.AZC_OPERATION_TMP.ID IS 'ID ��������';

COMMENT ON COLUMN MASTER.AZC_OPERATION_TMP.DATE_OPER IS '���� ��������';

COMMENT ON COLUMN MASTER.AZC_OPERATION_TMP.DENCITY IS '��������� �������';

COMMENT ON COLUMN MASTER.AZC_OPERATION_TMP.VOLUME IS '����� ��������';

COMMENT ON COLUMN MASTER.AZC_OPERATION_TMP.VES IS '��� ��������';

COMMENT ON COLUMN MASTER.AZC_OPERATION_TMP.NOTE IS '����������';

COMMENT ON COLUMN MASTER.AZC_OPERATION_TMP.ORG_STRU_ID IS 'ID ���';


