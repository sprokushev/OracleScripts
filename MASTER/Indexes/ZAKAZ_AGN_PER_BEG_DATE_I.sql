--
-- ZAKAZ_AGN_PER_BEG_DATE_I  (Index) 
--
CREATE INDEX MASTER.ZAKAZ_AGN_PER_BEG_DATE_I ON MASTER.ZAKAZ
(IS_AGENT, PERIOD_ID, BEGIN_DATE)
TABLESPACE USERS;

