-- 
-- Non Foreign Key Constraints for Table REPL_SITE 
-- 
ALTER TABLE MASTER.REPL_SITE ADD (
  CHECK ("NAME" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.REPL_SITE ADD (
  CHECK ("DSN_TYPE" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.REPL_SITE ADD (
  CHECK ("SITE_TYPE" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.REPL_SITE ADD (
  CONSTRAINT R_SITE_PK
  PRIMARY KEY
  (ID)
  USING INDEX MASTER.R_SITE_PK
  ENABLE VALIDATE);
