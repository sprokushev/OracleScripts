--
-- TOW_PUT_KONS  (Table) 
--
CREATE TABLE MASTER.TOW_PUT_KONS
(
  ID_OPER            NUMBER(18)                 NOT NULL,
  DATE_OPER          DATE,
  KOL_1              NUMBER(15,3)               DEFAULT 0,
  KG_1               NUMBER(15,3)               DEFAULT 0,
  CENA_POK_BN_1      NUMBER(15,2)               DEFAULT 0,
  CENA_POK_1         NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_BN_1     NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_NDS_1    NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_AKCIZ_1  NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_1        NUMBER(15,2)               DEFAULT 0,
  KOL_2              NUMBER(15,3)               DEFAULT 0,
  KG_2               NUMBER(15,3)               DEFAULT 0,
  CENA_POK_BN_2      NUMBER(15,2)               DEFAULT 0,
  CENA_POK_2         NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_BN_2     NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_NDS_2    NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_AKCIZ_2  NUMBER(15,2)               DEFAULT 0,
  SUMMA_POK_2        NUMBER(15,2)               DEFAULT 0,
  ORG_STRU_ID        NUMBER(10),
  PREDPR_KONS_ID     NUMBER(20),
  PROD_KONS_ID       VARCHAR2(21 BYTE),
  LOAD_TYPE_ID       NUMBER(2),
  ORG_POLUCH_ID      NUMBER(10),
  FILIAL_ID          NUMBER(10)                 NOT NULL
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON TABLE MASTER.TOW_PUT_KONS IS '����.����������: ������ � ����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.ID_OPER IS '����� � ����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.DATE_OPER IS '����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.KOL_1 IS '���-��';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.KG_1 IS '���';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.CENA_POK_BN_1 IS '���� ��� �������';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.CENA_POK_1 IS '����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_BN_1 IS '����� ��� �������';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_NDS_1 IS '���';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_AKCIZ_1 IS '�����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_1 IS '�����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.KOL_2 IS '���-��';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.KG_2 IS '���';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.CENA_POK_BN_2 IS '���� ��� �������';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.CENA_POK_2 IS '����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_BN_2 IS '����� ��� �������';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_NDS_2 IS '���';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_AKCIZ_2 IS '�����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.SUMMA_POK_2 IS '�����';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.ORG_STRU_ID IS 'ID ���';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.PREDPR_KONS_ID IS '�����������';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.PROD_KONS_ID IS '������� (����.����������)';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.LOAD_TYPE_ID IS '��� ���������������';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.ORG_POLUCH_ID IS 'ID ���';

COMMENT ON COLUMN MASTER.TOW_PUT_KONS.FILIAL_ID IS 'ID ���';


