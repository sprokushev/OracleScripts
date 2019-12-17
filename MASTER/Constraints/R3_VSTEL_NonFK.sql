-- 
-- Non Foreign Key Constraints for Table R3_VSTEL 
-- 
ALTER TABLE MASTER.R3_VSTEL ADD (
  CONSTRAINT VSTEL_PK
  PRIMARY KEY
  (VBAP_VSTEL)
  USING INDEX MASTER.VSTEL_PK
  ENABLE VALIDATE);
