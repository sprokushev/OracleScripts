--
-- RN_R  (Index) 
--
CREATE UNIQUE INDEX MASTER.RN_R ON MASTER.AZS_R_TMP
(AZS_R, DATE_R, TYPE_R, TRK_R)
TABLESPACE USERSINDX;

