--
-- V_AZC_SYS_FIELDS  (View) 
--
CREATE OR REPLACE FORCE VIEW MASTER.V_AZC_SYS_FIELDS
(ID, NAME, N_ORDER, CAPTION, SIZE_FIELD)
AS 
SELECT A.ID, A.NAME, B.N_ORDER,B.CAPTION, B.SIZE_FIELD  FROM AZC_OPER_MAIN A, AZC_OPER_FIELDS B
WHERE 
A.ID = B.N_PAGE;

