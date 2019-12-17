-- 
-- Foreign Key Constraints for Table PAYMENTS 
-- 
ALTER TABLE MASTER.PAYMENTS ADD (
  CONSTRAINT PAYMENTS_BANKS_FK 
  FOREIGN KEY (BANK_ID) 
  REFERENCES MASTER.KLS_BANKS (ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.PAYMENTS ADD (
  CONSTRAINT PAYMENTS_DOG_FK 
  FOREIGN KEY (DOG_ID) 
  REFERENCES MASTER.KLS_DOG (ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.PAYMENTS ADD (
  CONSTRAINT PAYMENTS_OURBANK_FK 
  FOREIGN KEY (OURBANK_ID) 
  REFERENCES MASTER.KLS_BANKS (ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.PAYMENTS ADD (
  FOREIGN KEY (RS_ID) 
  REFERENCES MASTER.KLS_RS (ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.PAYMENTS ADD (
  FOREIGN KEY (PAYFORM_ID) 
  REFERENCES MASTER.KLS_PAYFORM (ID)
  ENABLE NOVALIDATE);
