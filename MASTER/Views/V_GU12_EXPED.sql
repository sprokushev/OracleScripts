--
-- V_GU12_EXPED  (View) 
--
CREATE OR REPLACE FORCE VIEW MASTER.V_GU12_EXPED
(ID, SHORT_NAME, PREDPR_NAME, OKPO, EXPED_ADR, 
 FOX_KOD)
AS 
select a.ID
,DECODE(a.ID,0,'',a.SHORT_NAME) AS SHORT_NAME
,DECODE(a.ID,0,'',A.PREDPR_NAME) AS PREDPR_NAME
,A.OKPO
,DECODE(a.ID,0,'',A.POSTINDEX_P||' '||A.CITY_P||' '||A.ADDRESS_P) AS EXPED_ADR
,B.FOX_KOD
from KLS_PREDPR a,PREDPR_ROLE B
where a.ID=b.PREDPR_ID
and (b.KLS_ROLE_ID=3
or a.ID=0)
order by SHORT_NAME;

