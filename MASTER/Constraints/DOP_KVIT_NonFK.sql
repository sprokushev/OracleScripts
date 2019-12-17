-- 
-- Non Foreign Key Constraints for Table DOP_KVIT 
-- 
ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("FLG_OPERDATA" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("MESTO_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("NOM_ZD" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("PROD_ID_NPR" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("TEX_PD_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("DATE_OTGR" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("VES" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("VES_BRUTTO" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("TARIF" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("TARIF19" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("TARIF_ORIG" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("NUM_KVIT" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("FLG_DOP_CIST" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("FLG_VAG_KLIENT" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("VAGOWNER_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("VAGONTYPE_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("KALIBR_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("FORMNAKL_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SHABEXP_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("EXPED_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("GROTP_ID" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_PROD" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_AKCIZ" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_PROD_NDS" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("TARIF_NDS" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_VOZN11" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_VOZN11_NDS" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_VOZN12" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_VOZN12_NDS" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("SUM_STRAH" IS NOT NULL)
  DISABLE NOVALIDATE);

ALTER TABLE MASTER.DOP_KVIT ADD (
  CHECK ("CENA_VOZN" IS NOT NULL)
  DISABLE NOVALIDATE);
