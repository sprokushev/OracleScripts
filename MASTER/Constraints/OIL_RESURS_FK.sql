-- 
-- Foreign Key Constraints for Table OIL_RESURS 
-- 
ALTER TABLE MASTER.OIL_RESURS ADD (
  CONSTRAINT OIL_RESURS_R01 
  FOREIGN KEY (KOD_PLAN) 
  REFERENCES MASTER.OIL_PLAN (KOD)
  ENABLE NOVALIDATE);
