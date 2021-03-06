CREATE OR REPLACE procedure PR_KOMI_UPD_CUSTORD
(
 nCOMPANY    in number,
 nCUST_RN    in number
)
as

 nMQUANT number(17);
 nAQUANT number(17);
 nSHEEP_RN number(17);
 nSUM_   number(17,2);
 nSUMW_   number(17,2);
 nWEIGHTMAIN number(1);
 nWEIGHTALT number(1);

begin

nSHEEP_RN:=F_DOCLINKS_LINK_IN_DOC('GoodsTransInvoicesToConsumers',nCUST_RN,'ConsumersOrders');
if nSHEEP_RN is not null then

for C1 in (select * from TRANSINVCUSTSPECS where PRN=nCUST_RN)
loop
for C in (select NOM_MODIF  NOMMODIF, NOMMOD_PACK NOMNMODIFPACK, NOMEN,
 SUM(MAIN_QUANT) QUANT,SUM(ALT_QUANT) QUANTALT, SUM(SUMWTAX) SUM_, SUM(SUMWOTAX) SUMW_
 from CONSUMERORDS where PRN=nSHEEP_RN group by NOM_MODIF,NOMMOD_PACK,NOMEN)
loop

   select /*+ ORDERED*/ SUM(QUANT), SUM(QUANTALT), SUM(SUMMWITHNDS), SUM(SUMM)
    into nMQUANT,nAQUANT,nSUM_,nSUMW_
   from DOCINPT I, DOCLINKS L, DOCOUTPT O, TRANSINVCUSTSPECS S
   where I.DOCUMENT=nSHEEP_RN and I.UNITCODE='ConsumersOrders'
   and L.IN_DOC=I.RN and O.RN=L.OUT_DOC
   and O.UNITCODE='GoodsTransInvoicesToConsumers' and O.DOCUMENT!=nCUST_RN
   and S.PRN=O.DOCUMENT and S.NOMMODIF=C.NOMMODIF and S.NOMNMODIFPACK=C.NOMNMODIFPACK;


      nAQUANT:=C.QUANTALT-NVL(nAQUANT,0);
      nMQUANT:=C.QUANT-NVL(nMQUANT,0);
      nSUM_:=C.SUM_-NVL(nSUM_,0);
      nSUMW_:=C.SUMW_-NVL(nSUMW_,0);

     P_TRNINVCUSTSPECS_BASE_UPDATE
(
C1.RN,
C1.COMPANY,
C1.TAXGR,
C1.GOODSPARTY,
C1.NOMNMODIFPACK,
C1.NOMMODIF,
C1.ARTICLE,
C1.PRICE,
C1.DISCOUNT,
C1.QUANT*nSUM_/C1.SUMMWITHNDS,
C1.QUANTALT*nSUM_/C1.SUMMWITHNDS,
C1.PRICEMEAS,
  nSUMW_,
  nSUM_,
C1.BEGINDATE,
C1.ENDDATE,
C1.NOTE
);

end loop;
end loop;
end if;

end;
/

