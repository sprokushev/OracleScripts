-- 
-- Non Foreign Key Constraints for Table XX101_STATISTICS 
-- 
ALTER TABLE MASTER.XX101_STATISTICS ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE USERS
  ENABLE VALIDATE);
