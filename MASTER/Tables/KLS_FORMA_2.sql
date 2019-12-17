--
-- KLS_FORMA_2  (Table) 
--
CREATE TABLE MASTER.KLS_FORMA_2
(
  ID           NUMBER(10)                       NOT NULL,
  NAME         VARCHAR2(50 BYTE),
  FOX_FORMA_2  NUMBER(2),
  GRUZ1_NAME   VARCHAR2(50 BYTE),
  GRUZ2_NAME   VARCHAR2(50 BYTE),
  VZISK1_NAME  VARCHAR2(50 BYTE),
  VZISK2_NAME  VARCHAR2(50 BYTE)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON COLUMN MASTER.KLS_FORMA_2.ID IS '��� ������� ������';

COMMENT ON COLUMN MASTER.KLS_FORMA_2.NAME IS '������������';

COMMENT ON COLUMN MASTER.KLS_FORMA_2.GRUZ1_NAME IS '��� ������������� �����';

COMMENT ON COLUMN MASTER.KLS_FORMA_2.GRUZ2_NAME IS '��� ������������� �����';

COMMENT ON COLUMN MASTER.KLS_FORMA_2.VZISK1_NAME IS '� ����� "��������"';

COMMENT ON COLUMN MASTER.KLS_FORMA_2.VZISK2_NAME IS '� ����� "��������"';


