--
-- V_TRIADA_FACT  (View) 
--
CREATE OR REPLACE FORCE VIEW MASTER.V_TRIADA_FACT
(VID_DOC, GRPROD, PROD, PLAT, TRIADA, 
 TRI_VES_FACT)
AS 
SELECT vid_doc,GRPROD,PROD,PLAT,TRIADA,SUM(VES_FAKT) as TRI_VES_FACT FROM V_TRIADA_RAZNAR
WHERE VID_DOC='fact'GROUP BY vid_doc,GRPROD,PROD,PLAT,TRIADA 
ORDER BY GRPROD,PROD,PLAT,TRIADA;

