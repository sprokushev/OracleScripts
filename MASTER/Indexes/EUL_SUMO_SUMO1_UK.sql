--
-- EUL_SUMO_SUMO1_UK  (Index) 
--
CREATE UNIQUE INDEX MASTER.EUL_SUMO_SUMO1_UK ON MASTER.EUL_SUMMARY_OBJS
(SBO_SRS_ID, SDO_BITMAP_POS, SBO_NAME)
TABLESPACE USERSINDX;

