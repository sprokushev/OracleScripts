--
-- NAKL_UK  (Index) 
--
CREATE UNIQUE INDEX MASTER.NAKL_UK ON MASTER.NAKL
(MESTO_ID, TRUNC("NAKL_DATE",'fmyyyy'), NAKL_NUM)
TABLESPACE USERSINDX;

