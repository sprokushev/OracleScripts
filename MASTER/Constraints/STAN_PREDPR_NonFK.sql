-- 
-- Non Foreign Key Constraints for Table STAN_PREDPR 
-- 
ALTER TABLE MASTER.STAN_PREDPR ADD (
  CHECK ("PREDPR_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.STAN_PREDPR ADD (
  CHECK ("STAN_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.STAN_PREDPR ADD (
  CHECK ("VETKA_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.STAN_PREDPR ADD (
  CHECK ("IS_MAIN" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.STAN_PREDPR ADD (
  CONSTRAINT STAN_PREDPR_PK
  PRIMARY KEY
  (ID)
  USING INDEX MASTER.STAN_PREDPR_PK
  ENABLE VALIDATE);
