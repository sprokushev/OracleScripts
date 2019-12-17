-- 
-- Foreign Key Constraints for Table KSSS_PREDPR_R3_VENDORS_DESC 
-- 
ALTER TABLE MASTER.KSSS_PREDPR_R3_VENDORS_DESC ADD (
  CONSTRAINT KSSS_PREDPR_R3_VENDORS_FK 
  FOREIGN KEY (R3_VENDORS) 
  REFERENCES MASTER.R3_VENDORS (ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.KSSS_PREDPR_R3_VENDORS_DESC ADD (
  CONSTRAINT KSSS_PREDPR_R3_VEND_PREDPR_FK 
  FOREIGN KEY (KSSS_PREDPR_ID) 
  REFERENCES MASTER.KSSS_PREDPR (KSSS_PREDPR_ID)
  ENABLE NOVALIDATE);
