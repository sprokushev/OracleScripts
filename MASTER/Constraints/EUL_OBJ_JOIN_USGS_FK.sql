-- 
-- Foreign Key Constraints for Table EUL_OBJ_JOIN_USGS 
-- 
ALTER TABLE MASTER.EUL_OBJ_JOIN_USGS ADD (
  CONSTRAINT EUL_OJU_COBJ_FK 
  FOREIGN KEY (OJU_OBJ_ID) 
  REFERENCES MASTER.EUL_OBJS (OBJ_ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.EUL_OBJ_JOIN_USGS ADD (
  CONSTRAINT EUL_OJU_FK_FK 
  FOREIGN KEY (OJU_KEY_ID) 
  REFERENCES MASTER.EUL_KEY_CONS (KEY_ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.EUL_OBJ_JOIN_USGS ADD (
  CONSTRAINT EUL_OJU_SUMO_FK 
  FOREIGN KEY (OJU_SUMO_ID) 
  REFERENCES MASTER.EUL_SUMMARY_OBJS (SUMO_ID)
  ENABLE NOVALIDATE);
