-- 
-- Non Foreign Key Constraints for Table REAL_OPL 
-- 
ALTER TABLE MASTER.REAL_OPL ADD (
  CHECK ("NOM_DOK" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.REAL_OPL ADD (
  CHECK ("UN_DOK" IS NOT NULL)
  DISABLE NOVALIDATE);
