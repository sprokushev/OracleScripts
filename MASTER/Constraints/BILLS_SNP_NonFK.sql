-- 
-- Non Foreign Key Constraints for Table BILLS_SNP 
-- 
ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("NOM_SF" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("DATE_VYP_SF" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("DATE_KVIT" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("DATE_BUXG" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("DATE_MOS" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("SUMMA_DOK" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("NDS_DOK" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("GSM_DOK" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("AKCIZ_DOK" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("OWNER_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("DOG_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CHECK ("USL_NUMBER" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.BILLS_SNP ADD (
  CONSTRAINT BILLS_SNP_PK
  PRIMARY KEY
  (NOM_DOK)
  USING INDEX MASTER.BILLS_SNP_PK
  ENABLE VALIDATE);
