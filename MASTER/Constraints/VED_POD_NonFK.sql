-- 
-- Non Foreign Key Constraints for Table VED_POD 
-- 
ALTER TABLE MASTER.VED_POD ADD (
  CHECK ("MESTO_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.VED_POD ADD (
  CHECK ("LOAD_TYPE_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.VED_POD ADD (
  CHECK ("VETKA_OTP_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.VED_POD ADD (
  CHECK ("POD_NUM" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.VED_POD ADD (
  CHECK ("POD_DATE" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.VED_POD ADD (
  CHECK ("KOL" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.VED_POD ADD (
  CHECK ("VES_CIST" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.VED_POD ADD (
  CONSTRAINT VED_POD_PK
  PRIMARY KEY
  (ID)
  USING INDEX MASTER.VED_POD_PK
  ENABLE VALIDATE);
