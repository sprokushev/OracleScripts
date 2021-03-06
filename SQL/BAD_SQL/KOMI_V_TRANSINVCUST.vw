CREATE OR REPLACE FORCE VIEW PARUS.KOMI_V_TRANSINVCUST
(NRN, NCOMPANY, NCRN, NDOCTYPE, SDOCTYPE, 
 SPREF, SNUMB, DDOCDATE, NSTATUS, DWORK_DATE, 
 DSALEDATE, DRESERVDATE, DSALESREPORTDATE, SACCDOC, SACCNUMB, 
 DACCDATE, SDIRDOC, SDIRNUMB, DDIRDATE, NSTOPER, 
 SSTOPER, NGSMWAYS_TYPE, NFACTRET_SIGN, SFACEACC, NFACEACCCRN, 
 NGRAPHPOINT, SGRAPHPOINT, NFA_CURRENCY, SFA_CURRENCY, NAGENT, 
 NAGENTCRN, SAGENT, NTARIF, STARIF, NINCNDS, 
 NSTORE, SSTORE, NSTORECRN, SMOL, NSHEEPVIEW, 
 SSHEEPVIEW, NPAYTYPE, SPAYTYPE, NDISCOUNT, NCURRENCY, 
 SCURRENCY, NCURCOURS, NCURBASE, NFA_COURS, NFA_BASECOURS, 
 NSUMM, NSUMMWITHNDS, NSUMM_BASE, NSUMMWITHNDS_BASE, NPLANPAYSUMM, 
 NFACTPAYSUMM, SRECIPDOC, SRECIPNUMB, DRECIPDATE, NFERRYMAN, 
 SFERRYMAN, NAGNFIFO, SAGNFIFO, SFORWARDER, NFORWARDER, 
 SWAYBLADENUMB, NDRIVER, SDRIVER, NCAR, SCAR, 
 NROUTE, SROUTE, NTRAILER1, STRAILER1, NTRAILER2, 
 STRAILER2, SBARCODE, SCOMMENTS, DCASH_DATE, NSTPL_PROCESSED, 
 DTRREP_DATE, DPN_DATE, DACFO_DATE, DINDOC_DATE, DOUTDOC_DATE, 
 NACC_AGENT, SACC_AGENT, NACCAGENT_CRN, NSUBDIV, SSUBDIV, 
 NRET_SUM, DPAY_PLAN)
AS 
select /*+ RULE */
T.RN, T.COMPANY, T.CRN,
T.DOCTYPE, DT1.DOCCODE, T.PREF, T.NUMB, T.DOCDATE,
T.STATUS, T.WORK_DATE, T.SALEDATE, T.RESERVDATE, T.SALESREPORTDATE,
DT2.DOCCODE, T.ACCNUMB, T.ACCDATE, DT3.DOCCODE, T.DIRNUMB, T.DIRDATE,
T.STOPER, W.GSMWAYS_MNEMO, W.GSMWAYS_TYPE, W.FACTRET_SIGN,
F.NUMB, F.CRN, T.GRAPHPOINT, GP.CODE, F.CURRENCY, FCUR.INTCODE,
T.AGENT, AGN1.CRN, AGN1.AGNABBR, T.TARIF, TAR.CODE, TAR.INCNDS,
T.STORE, AZS.AZS_NUMBER, AZS.CRN, AGN2.AGNABBR, T.SHEEPVIEW, SHP.CODE,
T.PAYTYPE, PAY.GSMPAYMENTS_MNEMO, T.DISCOUNT, T.CURRENCY, CUR.INTCODE,
T.CURCOURS, T.CURBASE, T.FA_COURS, T.FA_BASECOURS,
T.SUMM + T.SERV_SUMM, T.SUMMWITHNDS + T.SERV_SUMM_NDS,
F_CALC_MASTER_SUM(T.COMPANY, 'GoodsTransInvoicesToConsumers', T.RN,
T.CURCOURS, T.CURBASE, 'nSUM_BASE'),
F_CALC_MASTER_SUM(T.COMPANY, 'GoodsTransInvoicesToConsumers', T.RN,
T.CURCOURS, T.CURBASE, 'nSUMTAX_BASE'),
T.PLANPAYSUMM, T.FACTPAYSUMM,
DT4.DOCCODE, T.RECIPNUMB, T.RECIPDATE,
T.FERRYMAN, AGN3.AGNABBR, T.AGNFIFO, FIF.CODE,
NVL(DRV1.CODE,DRVAG1.AGNABBR), T.FORWARDER, T.WAYBLADENUMB, T.DRIVER, NVL(DRV.CODE,DRVAG.AGNABBR),
T.CAR, AC1.CAR_NUMBER, T.ROUTE, DR.NUMB, T.TRAILER1, AC2.CAR_NUMBER, T.TRAILER2, AC3.CAR_NUMBER,
T.BARCODE, T.COMMENTS,
F_DOCLINKS_LINK_OUT('GoodsTransInvoicesToConsumers',T.RN,'CashDocuments'),
F_STRPLRESJRNL_CHECK_PROCESSED( T.COMPANY, T.RN, 'GoodsTransInvoicesToConsumers' ),
F_DOCLINKS_LINK_OUT('GoodsTransInvoicesToConsumers',T.RN,'TradeReports'),
F_DOCLINKS_LINK_OUT('GoodsTransInvoicesToConsumers',T.RN,'PayNotes'),
F_DOCLINKS_LINK_OUT('GoodsTransInvoicesToConsumers',T.RN,'AccountFactOutput'),
F_DOCLINKS_LINK_IN('GoodsTransInvoicesToConsumers',T.RN,null),
F_DOCLINKS_LINK_OUT('GoodsTransInvoicesToConsumers',T.RN,null),
T.ACC_AGENT,
A1.AGNABBR,
A1.CRN,
T.SUBDIV,
D.CODE,
F_TRANSINVCUST_GET_RET_SUM ( T.RN ),
KOMI_F_PAYPALN_LINK_OUT('GoodsTransInvoicesToConsumers',T.RN)
from
TRANSINVCUST         T,
FACEACC              F,
CURNAMES             FCUR,
CURNAMES             CUR,
AGNLIST              DRVAG,
AGNLIST              DRVAG1,
AGNLIST              AGN1,
AGNLIST              AGN2,
AGNLIST              AGN3,
AGNLIST              A1,
AGNDRIVERS           DRV,
AGNDRIVERS           DRV1,
FCACGRAPHPOINTS      GP,
AGENTCARS            AC1,
AGENTCARS            AC2,
AGENTCARS            AC3,
DOCTYPES             DT1,
DOCTYPES             DT2,
DOCTYPES             DT3,
DOCTYPES             DT4,
AZSGSMPAYMENTSTYPES  PAY,
AZSGSMWAYSTYPES      W,
AZSAZSLISTMT         AZS,
DICTARIF             TAR,
DICSHPVW             SHP,
AGNFIFO              FIF,
DICROUT              DR,
INS_DEPARTMENT       D
where T.AGENT      = AGN1.RN
and T.MOL        = AGN2.RN
and T.CURRENCY   = CUR.RN
and T.FACEACC    = F.RN
and T.STORE      = AZS.RN
and T.TARIF      = TAR.RN
and T.PAYTYPE    = PAY.RN
and T.STOPER     = W.RN
and T.SHEEPVIEW  = SHP.RN
and T.DOCTYPE    = DT1.RN
and F.CURRENCY   = FCUR.RN
and DRV.SELF     = DRVAG.RN  (+)
and DRV1.SELF    = DRVAG1.RN (+)
and T.FERRYMAN   = AGN3.RN   (+)
and T.AGNFIFO    = FIF.RN    (+)
and T.DRIVER     = DRV.RN    (+)
and T.FORWARDER  = DRV1.RN   (+)
and T.ROUTE      = DR.RN     (+)
and T.CAR        = AC1.RN    (+)
and T.TRAILER1   = AC2.RN    (+)
and T.TRAILER2   = AC3.RN    (+)
and T.GRAPHPOINT = GP.RN     (+)
and T.ACCDOC     = DT2.RN    (+)
and T.DIRDOC     = DT3.RN    (+)
and T.RECIPDOC   = DT4.RN    (+)
and T.ACC_AGENT  = A1.RN     (+)
and T.SUBDIV     = D.RN      (+)
and exists( select * from V_USERPRIV UP where UP.CATALOG = T.CRN );


CREATE PUBLIC SYNONYM KOMI_V_TRANSINVCUST FOR PARUS.KOMI_V_TRANSINVCUST;


GRANT SELECT ON  PARUS.KOMI_V_TRANSINVCUST TO PUBLIC;

