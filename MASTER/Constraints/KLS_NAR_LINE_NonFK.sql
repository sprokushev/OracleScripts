-- 
-- Non Foreign Key Constraints for Table KLS_NAR_LINE 
-- 
ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CHECK ("NARIAD_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CHECK ("NOM_ZD" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CHECK ("IS_LOADED" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CHECK ("VES" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CHECK ("KOL" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CHECK ("FACT_VES" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CHECK ("FACT_KOL" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_NAR_LINE ADD (
  CONSTRAINT NAR_LINE_PK
  PRIMARY KEY
  (ID)
  USING INDEX MASTER.NAR_LINE_PK
  ENABLE VALIDATE);
