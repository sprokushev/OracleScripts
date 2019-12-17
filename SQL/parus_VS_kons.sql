SELECT 
--    RTRIM(LTRIM(T.PREF)),
--	LTRIM(RTRIM(T.NUMB)), 
--  so.GSMWAYS_MNEMO,
--  n.GROUP_CODE,
--  tmc_gr.GROUP_NAME,
  fg.CODE,
  skl.AZS_NUMBER,
  n.NOMEN_NAME,
  /*produ.AGNNAME, RusMonth(t.DOCDATE) AS MON_DATE,*/
--  a.AGNNAME AS PLAT_NAME,
  /*f.NAME AS POLUCH_NAME,NamePoluchReady(f.NAME) AS KEY_NAME,n.NOMEN_NAME AS PRODUCT_NAME,pt.GSMPAYMENTS_MNEMO AS PAYTYPE_NAME,
	   ts.QUANTALT/1000 AS VES_TN,ROUND(rp.PRICE*1.2*1000,2) AS POKUP_PRICE,ROUND(ts.PRICE*1000,2) AS REALIZ_PRICE,
	   so.GSMWAYS_MNEMO AS TIP_TRANSP*/
  SUM(DECODE(t.AGENT,65093872,0,DECODE(so.GSMWAYS_MNEMO,'�������',-ts.QUANTALT,ts.QUANTALT)))/1000 AS SOBS_TRAN,
  SUM(DECODE(t.AGENT,65093872,DECODE(so.GSMWAYS_MNEMO,'�������',-ts.QUANTALT,ts.QUANTALT),0))/1000 AS VNUT_TRAN
FROM agnlist a,AGNFIFO f,transinvcust t,transinvcustspecs ts,dicnomns n,nommodif m,AZSGSMPAYMENTSTYPES pt,faceacc fa,
	 GOODSPARTIES gp,/*GOODSSUPPLY gs,REGPRICE rp,*/AZSAZSLISTMT skl,AZSGSMWAYSTYPES so, INCOMDOC in_doc, AGNLIST produ, 
	 FCACGR fg, DICGNOMN tmc_gr
WHERE t.RN=ts.PRN (+) 
  AND t.AGENT=a.RN (+)
  AND t.AGNFIFO=f.RN(+) 
  AND ts.NOMMODIF=m.RN (+) 
  AND m.PRN=n.RN (+)
  AND t.PAYTYPE=pt.RN (+) 
  AND n.NOMEN_TYPE=1 
  AND t.FACEACC=fa.RN (+)
  AND fa.FCACGR=fg.RN (+)
--  AND (gs.STORE=t.STORE OR gs.STORE IS NULL) 
  AND ts.GOODSPARTY=gp.RN(+) 
--  AND gp.RN=gs.PRN(+) 
--  AND gs.RN=rp.PRN(+) 
  AND ts.NOMMODIF=gp.NOMMODIF(+)
--  AND (rp.ADATE=t.DOCDATE OR rp.ADATE IS NULL) 
  AND t.STORE=skl.RN (+) 
  AND trim(skl.AZS_NUMBER) IN ('���������_��','����_��','�������','�����_�������_�����','�����_���')   
  AND t.STOPER=so.RN (+)
  /*AND trim(so.GSMWAYS_MNEMO) IN ('����_�������','����_�����','���_�������','���������� �������.')*/
  AND t.DOCDATE>=TO_DATE('01.01.2002','dd.mm.yyyy') AND t.DOCDATE<=TO_DATE('31.03.2002','dd.mm.yyyy')
  AND gp.INDOC = in_doc.RN (+)
  AND in_doc.AGENT=produ.RN (+)
  AND fg.CODE IN ('����������','�������','�������')
  AND n.GROUP_CODE=tmc_gr.RN(+)
  AND n.GROUP_CODE NOT IN (1,53030254,92887455)
  AND NOT (RTRIM(LTRIM(T.PREF))='02' AND LTRIM(RTRIM(T.NUMB)) IN ('62','293','499','495','41','232','418','419') AND t.DOCDATE>=TO_DATE('01.01.2002','dd.mm.yyyy') AND t.DOCDATE<=TO_DATE('28.02.2002','dd.mm.yyyy'))
  AND t.AGENT=65093872 
GROUP BY   /*  RTRIM(LTRIM(T.PREF)),
	LTRIM(RTRIM(T.NUMB)),*/ 
/*a.AGNNAME,so.GSMWAYS_MNEMO,n.GROUP_CODE,tmc_gr.GROUP_NAME*/fa.FCACGR,fg.CODE,skl.AZS_NUMBER, n.NOMEN_NAME
  




