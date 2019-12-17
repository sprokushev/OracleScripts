-- 
-- Non Foreign Key Constraints for Table AZC_TYPE_OPERATION 
-- 
ALTER TABLE MASTER.AZC_TYPE_OPERATION ADD (
  CHECK ("NAME" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.AZC_TYPE_OPERATION ADD (
  CHECK ("KIND_OPER" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.AZC_TYPE_OPERATION ADD (
  CONSTRAINT TYPE_OPER_PK
  PRIMARY KEY
  (ID)
  USING INDEX MASTER.TYPE_OPER_PK
  ENABLE VALIDATE);
