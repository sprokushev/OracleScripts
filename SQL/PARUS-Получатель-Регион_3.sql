SELECT AAA.MON_DATE,AAA.PLAT_NAME,BBB.REGION_NAME,AAA.POLUCH_NAME,AAA.PRODUCT_NAME,AAA.PAYTYPE_NAME,AAA.VES_TN,AAA.POKUP_PRICE,AAA.REALIZ_PRICE
FROM
(
SELECT MON_NUM,MON_DATE,PLAT_NAME,KEY_NAME,POLUCH_NAME,PRODUCT_NAME,PAYTYPE_NAME,SUM(VES_TN) AS VES_TN,POKUP_PRICE,REALIZ_PRICE
FROM
(
SELECT
  TO_CHAR(v_nakl.t_DOCDATE,'MM') AS MON_NUM,
  RusMonth(v_nakl.t_DOCDATE) AS MON_DATE,
  v_nakl.PLAT_NAME,
  v_nakl.POLUCH_NAME,
  v_nakl.KEY_NAME,
  v_nakl.PRODUCT_NAME,
  v_nakl.PAYTYPE_NAME,
  ROUND(v_cena.rp_PRICE*1.2*1000,2) AS POKUP_PRICE,
  v_nakl.REALIZ_PRICE,
  v_nakl.SOBS_TRAN,
  v_nakl.VNUT_TRAN,
  v_nakl.SOBS_TRAN+v_nakl.VNUT_TRAN AS VES_TN
FROM v_cena,v_nakl
WHERE v_nakl.gp_RN=v_cena.gs_PRN(+) 
  AND v_nakl.t_STORE=v_cena.gs_STORE(+) 
  AND v_nakl.t_DOCDATE=v_cena.rp_ADATE(+) 
)
GROUP BY MON_NUM,MON_DATE,PLAT_NAME,KEY_NAME,POLUCH_NAME,PRODUCT_NAME,PAYTYPE_NAME,POKUP_PRICE,REALIZ_PRICE
) AAA,
(
SELECT MAX(BB.REGION_NAME) AS REGION_NAME,AA.NAME AS KEY_NAME
FROM
(
SELECT DISTINCT KEY_NAME AS NAME 
FROM v_nakl
) AA,
(  
SELECT NamePoluchReady(A.PREDPR_NAME) AS NAME,A.PREDPR_NAME, B.REGION_NAME FROM 
MASTER.KLS_PREDPR@buh.world A,MASTER.KLS_REGION@buh.world B WHERE A.REGION_ID=B.ID
ORDER BY 1
) BB
WHERE AA.NAME=BB.NAME(+)
GROUP BY AA.NAME
) BBB
WHERE AAA.KEY_NAME=BBB.KEY_NAME(+)
ORDER BY AAA.MON_NUM,AAA.PLAT_NAME,BBB.REGION_NAME,AAA.KEY_NAME,AAA.POLUCH_NAME,AAA.PRODUCT_NAME,AAA.PAYTYPE_NAME,AAA.POKUP_PRICE,AAA.REALIZ_PRICE
