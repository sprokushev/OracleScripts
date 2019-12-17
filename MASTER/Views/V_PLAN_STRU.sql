--
-- V_PLAN_STRU  (View) 
--
CREATE OR REPLACE FORCE VIEW MASTER.V_PLAN_STRU
(ID, NAME, BEGIN_DATE, END_DATE, LEVEL_POS, 
 KOD_SGR, KOD_SPG, KOD_RZD, KOD_PRZ, KOD_GRP, 
 KOD_PGR, PARENT_ID, HAS_CHILD, SPF_GROUP_ORDER, SPF_GROUP_NAME, 
 SPF_ORDER, SPF_NAME, IS_SNP, REGION_ID, IS_RESURS, 
 VIEW_LEVEL, POS_PREDPR_ID)
AS 
SELECT
 A.ID,
 DECODE(B.GRAND_PARENT_ID,99999,'',DECODE(B.GRAND_PARENT_VIEW,1,DECODE(B.GRAND_PARENT_NAME,B.PARENT_NAME,'',B.GRAND_PARENT_NAME||' \ '),'')) ||
   DECODE(B.PARENT_ID,99999,'',DECODE(B.PARENT_VIEW,1,DECODE(B.PARENT_NAME,A.NAME,'',B.PARENT_NAME||' \ '),'')) || A.NAME as NAME,
 A.BEGIN_DATE,
 A.END_DATE,
 A.LEVEL_POS,A.KOD_SGR,A.KOD_SPG,A.KOD_RZD,A.KOD_PRZ,A.KOD_GRP,A.KOD_PGR,
 A.PARENT_ID,
 DECODE(C.PARENT_ID,NULL,0,1),
 A.SPF_GROUP_ORDER, A.SPF_GROUP_NAME, A.SPF_ORDER, A.SPF_NAME,
 A.IS_SNP,
 a.region_id,
 A.IS_RESURS,
 A.VIEW_LEVEL,
 A.POS_PREDPR_ID
FROM V_KLS_PLANSTRU A,
     (
	 SELECT
        AA.ID as PARENT_ID,
		AA.NAME as PARENT_NAME,
		DECODE(SIGN(AA.LEVEL_POS-AA.VIEW_LEVEL),-1,0,1) as PARENT_VIEW,
		BB.ID as GRAND_PARENT_ID,
		BB.NAME as GRAND_PARENT_NAME,
		DECODE(SIGN(BB.LEVEL_POS-BB.VIEW_LEVEL),-1,0,1) as GRAND_PARENT_VIEW
      FROM KLS_PLANSTRU AA, KLS_PLANSTRU BB
      WHERE AA.PARENT_ID=BB.ID
	  ) B,
	  (SELECT DISTINCT PARENT_ID FROM KLS_PLANSTRU) C,
     (SELECT
        AA.ID,
        DECODE(BB.NAME,AA.NAME,AA.NAME,DECODE(BB.ID,99999,AA.NAME,4,AA.NAME,BB.NAME || ' - ' || AA.NAME)) AS NAME
      FROM KLS_PLANSTRU AA, KLS_PLANSTRU BB
      WHERE AA.PARENT_ID=BB.ID) D
WHERE A.PARENT_ID=B.PARENT_ID (+)
  AND A.ID = C.PARENT_ID (+)
  AND A.PARENT_ID=D.ID (+)
ORDER BY A.KOD_SGR,A.KOD_SPG,A.KOD_RZD,A.KOD_PRZ,A.KOD_GRP,A.KOD_PGR;

