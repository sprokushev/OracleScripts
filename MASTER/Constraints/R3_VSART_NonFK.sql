-- 
-- Non Foreign Key Constraints for Table R3_VSART 
-- 
ALTER TABLE MASTER.R3_VSART ADD (
  CONSTRAINT VSART_PK
  PRIMARY KEY
  (VBKD_VSART)
  USING INDEX MASTER.VSART_PK
  ENABLE VALIDATE);
