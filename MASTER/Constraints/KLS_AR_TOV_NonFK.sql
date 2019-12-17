-- 
-- Non Foreign Key Constraints for Table KLS_AR_TOV 
-- 
ALTER TABLE MASTER.KLS_AR_TOV ADD (
  CHECK ("NAME" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_AR_TOV ADD (
  CONSTRAINT AR_TOV_PK
  PRIMARY KEY
  (ID)
  USING INDEX MASTER.AR_TOV_PK
  ENABLE VALIDATE);
