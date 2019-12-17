--
-- KLS_PROD_NOMENKLATOR  (Table) 
--
CREATE TABLE MASTER.KLS_PROD_NOMENKLATOR
(
  MODIF           VARCHAR2(20 BYTE),
  MOD_MODIF       VARCHAR2(20 BYTE),
  NAME_PR         VARCHAR2(100 BYTE),
  KOD_OKP         VARCHAR2(20 BYTE),
  PROD            VARCHAR2(5 BYTE),
  NAME_GROUP      VARCHAR2(100 BYTE),
  PARUS_RN        NUMBER(18)                    NOT NULL,
  PARUS_PRN       NUMBER(18)                    NOT NULL,
  IS_AUTO_LINK    NUMBER(1)                     DEFAULT 1,
  IS_ACTUAL       NUMBER(1)                     DEFAULT 1,
  TAXGR_RN        NUMBER,
  TAXGR_CODE      VARCHAR2(20 BYTE),
  TAXGR_CODE_NEW  VARCHAR2(20 BYTE),
  TAXGR_INCOME    VARCHAR2(20 BYTE)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON TABLE MASTER.KLS_PROD_NOMENKLATOR IS '����� "����������� ������������ (�����) - �������"';


