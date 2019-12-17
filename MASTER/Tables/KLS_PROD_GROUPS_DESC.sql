--
-- KLS_PROD_GROUPS_DESC  (Table) 
--
CREATE TABLE MASTER.KLS_PROD_GROUPS_DESC
(
  ID                NUMBER(10)                  NOT NULL,
  PROD_ID_NPR       VARCHAR2(5 BYTE),
  PROD_GROUPS_ID    NUMBER(10),
  IS_AUTO_LINK      NUMBER(1)                   DEFAULT 1,
  PROD_TYPE_GRP_ID  NUMBER(10)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON TABLE MASTER.KLS_PROD_GROUPS_DESC IS '����������� ���������';

COMMENT ON COLUMN MASTER.KLS_PROD_GROUPS_DESC.ID IS '����������� ���������';

COMMENT ON COLUMN MASTER.KLS_PROD_GROUPS_DESC.PROD_ID_NPR IS '�������';

COMMENT ON COLUMN MASTER.KLS_PROD_GROUPS_DESC.PROD_GROUPS_ID IS '��� �����������';

COMMENT ON COLUMN MASTER.KLS_PROD_GROUPS_DESC.IS_AUTO_LINK IS '�������������� �����';

COMMENT ON COLUMN MASTER.KLS_PROD_GROUPS_DESC.PROD_TYPE_GRP_ID IS '��� ������������� ���������';


