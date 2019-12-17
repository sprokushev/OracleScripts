-- 
-- Non Foreign Key Constraints for Table R3_ROUTE_FULL 
-- 
ALTER TABLE MASTER.R3_ROUTE_FULL ADD (
  CONSTRAINT ROUTE_FULL_PK
  PRIMARY KEY
  (ROUTE, ANFRF)
  USING INDEX MASTER.ROUTE_FULL_PK
  ENABLE VALIDATE);
