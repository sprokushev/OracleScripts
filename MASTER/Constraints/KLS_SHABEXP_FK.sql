-- 
-- Foreign Key Constraints for Table KLS_SHABEXP 
-- 
ALTER TABLE MASTER.KLS_SHABEXP ADD (
  CONSTRAINT SHABEXP_PROD_FK 
  FOREIGN KEY (PROD_ID_NPR) 
  REFERENCES MASTER.KLS_PROD (ID_NPR)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.KLS_SHABEXP ADD (
  CONSTRAINT SHABEXP_STAN_FK 
  FOREIGN KEY (STAN_ID) 
  REFERENCES MASTER.KLS_STAN (ID)
  ENABLE NOVALIDATE);
