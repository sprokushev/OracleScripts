--
-- ENVIRONMENT_TYPES  (Table) 
--
CREATE TABLE MASTER.ENVIRONMENT_TYPES
(
  ID    NUMBER(10)                              NOT NULL,
  NAME  VARCHAR2(30 BYTE)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON TABLE MASTER.ENVIRONMENT_TYPES IS '���� ���������� ���������';

COMMENT ON COLUMN MASTER.ENVIRONMENT_TYPES.ID IS '��� ����������';

COMMENT ON COLUMN MASTER.ENVIRONMENT_TYPES.NAME IS '������������';


