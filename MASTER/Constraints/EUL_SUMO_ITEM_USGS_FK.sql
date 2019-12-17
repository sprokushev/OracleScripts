-- 
-- Foreign Key Constraints for Table EUL_SUMO_ITEM_USGS 
-- 
ALTER TABLE MASTER.EUL_SUMO_ITEM_USGS ADD (
  CONSTRAINT EUL_SIU_IT_FK 
  FOREIGN KEY (SIU_EXP_ID) 
  REFERENCES MASTER.EUL_EXPRESSIONS (EXP_ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.EUL_SUMO_ITEM_USGS ADD (
  CONSTRAINT EUL_SIU_SUMO_FK 
  FOREIGN KEY (SIU_SUMO_ID) 
  REFERENCES MASTER.EUL_SUMMARY_OBJS (SUMO_ID)
  ENABLE NOVALIDATE);

ALTER TABLE MASTER.EUL_SUMO_ITEM_USGS ADD (
  CONSTRAINT EUL_SMIU_FUN_FK 
  FOREIGN KEY (SMIU_FUN_ID) 
  REFERENCES MASTER.EUL_FUNCTIONS (FUN_ID)
  ENABLE NOVALIDATE);
