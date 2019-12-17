--
-- V_BILL_POS_FLAT_ORIG  (View) 
--
CREATE OR REPLACE FORCE VIEW MASTER.V_BILL_POS_FLAT_ORIG
(NOM_DOK, IS_AGENT, DATE_REALIZ, VES, CENA_BN, 
 SUMMA_BN, SUMMA_AKCIZ, SUMMA_PROD_BN, SUMMA_PROD_NDS, CENA, 
 SUMMA_PROD, TARIF_BN, TARIF_NDS, TARIF, TARIF_GUARD_BN, 
 TARIF_GUARD_NDS, TARIF_GUARD, VOZN11_BN, VOZN11_NDS, VOZN11, 
 VOZN12_BN, VOZN12_NDS, VOZN12, STRAH, NACENKA)
AS 
SELECT /*+ ALL_ROWS INDEX(BILL_POS BILL_POS_NOM_DOK_2_I) */
  NOM_DOK,
  IS_AGENT,
  DATE_REALIZ,
  SUM(DECODE(SIGN(BILL_POS_ID-10),-1,VES,0)) AS VES,
  MAX(DECODE(SIGN(BILL_POS_ID-10),-1,CENA_BN,0)) AS CENA_BN,
  SUM(DECODE(SIGN(BILL_POS_ID-10),-1,SUMMA_BN,0)) AS SUMMA_BN,
  SUM(DECODE(SIGN(BILL_POS_ID-10),-1,SUMMA_AKCIZ,0)) AS SUMMA_AKCIZ,
  SUM(DECODE(SIGN(BILL_POS_ID-10),-1,SUMMA_BN+SUMMA_AKCIZ,0)) AS SUMMA_PROD_BN,
  SUM(DECODE(SIGN(BILL_POS_ID-10),-1,SUMMA_NDS20,0)) AS SUMMA_PROD_NDS,
  MAX(DECODE(SIGN(BILL_POS_ID-10),-1,CENA,0)) AS CENA,
  SUM(DECODE(SIGN(BILL_POS_ID-10),-1,SUMMA,0)) AS SUMMA_PROD,
  SUM(DECODE(BILL_POS_ID,10,SUMMA_BN,0)) AS TARIF_BN,
  SUM(DECODE(BILL_POS_ID,10,SUMMA_NDS20,0)) AS TARIF_NDS,
  SUM(DECODE(BILL_POS_ID,10,SUMMA,0)) AS TARIF,
  SUM(DECODE(BILL_POS_ID,13,SUMMA_BN,0)) AS TARIF_GUARD_BN,
  SUM(DECODE(BILL_POS_ID,13,SUMMA_NDS20,0)) AS TARIF_GUARD_NDS,
  SUM(DECODE(BILL_POS_ID,13,SUMMA,0)) AS TARIF_GUARD,
  SUM(DECODE(BILL_POS_ID,11,SUMMA_BN,0)) AS VOZN11_BN,
  SUM(DECODE(BILL_POS_ID,11,SUMMA_NDS20,0)) AS VOZN11_NDS,
  SUM(DECODE(BILL_POS_ID,11,SUMMA,0)) AS VOZN11,
  SUM(DECODE(BILL_POS_ID,12,SUMMA_BN,0)) AS VOZN12_BN,
  SUM(DECODE(BILL_POS_ID,12,SUMMA_NDS20,0)) AS VOZN12_NDS,
  SUM(DECODE(BILL_POS_ID,12,SUMMA,0)) AS VOZN12,
  SUM(DECODE(BILL_POS_ID,20,SUMMA,0)) AS STRAH,
  MAX(DECODE(BILL_POS_ID,20,NACENKA,0)) AS NACENKA
FROM BILL_POS
GROUP BY
  NOM_DOK,
  IS_AGENT,
  DATE_REALIZ;

