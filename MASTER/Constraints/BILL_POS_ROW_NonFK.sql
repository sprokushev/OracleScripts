-- 
-- Non Foreign Key Constraints for Table BILL_POS_ROW 
-- 
ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("NOM_DOK" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("BILL_POS_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("VES" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("CENA_BN" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("CENA" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("SUMMA_BN" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("SUMMA_AKCIZ" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("SUMMA_NDS20" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("SUMMA" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CHECK ("NPP" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILL_POS_ROW ADD (
  CONSTRAINT BILL_POS_ROW_U01
  UNIQUE (NOM_DOK, BILL_POS_ID, NPP)
  USING INDEX MASTER.BILL_POS_ROW_U01
  ENABLE VALIDATE);
