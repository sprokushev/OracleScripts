--
-- MASTER_QUERY_TYPES  (Table) 
--
CREATE TABLE MASTER.MASTER_QUERY_TYPES
(
  ID    NUMBER(10)                              NOT NULL,
  NAME  VARCHAR2(50 BYTE),
  TAG   VARCHAR2(15 BYTE)
)
TABLESPACE USERS2
NOCOMPRESS ;

COMMENT ON TABLE MASTER.MASTER_QUERY_TYPES IS '���� �������� � ��';

COMMENT ON COLUMN MASTER.MASTER_QUERY_TYPES.ID IS '��� �������';

COMMENT ON COLUMN MASTER.MASTER_QUERY_TYPES.NAME IS '������������';

COMMENT ON COLUMN MASTER.MASTER_QUERY_TYPES.TAG IS '���';


