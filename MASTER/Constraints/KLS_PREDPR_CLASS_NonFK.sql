-- 
-- Non Foreign Key Constraints for Table KLS_PREDPR_CLASS 
-- 
ALTER TABLE MASTER.KLS_PREDPR_CLASS ADD (
  CHECK ("NAME" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_PREDPR_CLASS ADD (
  CONSTRAINT PK_KLS_PREDPR_CLASS
  PRIMARY KEY
  (ID)
  USING INDEX MASTER.PK_KLS_PREDPR_CLASS
  ENABLE VALIDATE);
