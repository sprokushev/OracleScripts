-- 
-- Non Foreign Key Constraints for Table TO_SS 
-- 
ALTER TABLE MASTER.TO_SS ADD (
  CHECK ("NOM_SF" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.TO_SS ADD (
  CONSTRAINT TO_SS_PK
  PRIMARY KEY
  (NOM_DOK)
  USING INDEX MASTER.TO_SS_PK
  ENABLE VALIDATE);
