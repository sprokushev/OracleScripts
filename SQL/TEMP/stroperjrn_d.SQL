--  ********************************************************************** 
--  Note: This rebuild script is not meant to be used when a possibility * 
--        exists that someone might try to access the table while it is  * 
--        being rebuilt!                                                 * 
--                                                                       * 
--        Locks are released when the first DDL, COMMIT or ROLLBACK is   * 
--        performed, so adding a "Lock table" command at the top of this * 
--        script will not prevent others from accessing the table for    * 
--        the duration of the script.                                    * 
--                                                                       * 
--   One more important note:                                            * 
--        This script will cause the catalog in replicated environments  * 
--        to become out of sync.                                         * 
--  ********************************************************************** 

--  Table Rebuild script generated by TOAD  
--  
--  Original table: STROPERJRN_D 
--  Backup of table: STROPERJRN_D_X 
--  Date: 08.08.2007 21:40:33 
--  
SET LINESIZE 200
--  
--  Make backup copy of original table 
ALTER TABLE PARUS.STROPERJRN_D RENAME TO STROPERJRN_D_X ; 
  
 

-- Drop all user named constraints
-- (none) 


--  Recreate original table 
CREATE TABLE PARUS.STROPERJRN_D
(
  GROUP_IDENT     NUMBER(17)                    NOT NULL,
  IDENT           NUMBER(17)                    NOT NULL,
  AUTHID          VARCHAR2(30 BYTE)             NOT NULL,
  STORE           VARCHAR2(40 BYTE),
  STORE_NAME      VARCHAR2(160 BYTE),
  CURRENCY        VARCHAR2(40 BYTE),
  NOM_GRP         VARCHAR2(40 BYTE),
  NOM_GRP_NAME    VARCHAR2(160 BYTE),
  NOMEN           VARCHAR2(40 BYTE),
  NOMEN_NAME      VARCHAR2(160 BYTE),
  MODIF           VARCHAR2(40 BYTE),
  MODIF_NAME      VARCHAR2(160 BYTE),
  PACK            VARCHAR2(40 BYTE),
  PACK_NAME       VARCHAR2(160 BYTE),
  PARTY           VARCHAR2(40 BYTE),
  SERNUMB         VARCHAR2(20 BYTE),
  GTD             VARCHAR2(40 BYTE),
  COUNTRY         VARCHAR2(40 BYTE),
  MEAS_MAIN       VARCHAR2(40 BYTE),
  MEAS_ALT        VARCHAR2(40 BYTE),
  MEAS_PACK       VARCHAR2(40 BYTE),
  QUANT           NUMBER(18,3),
  QUANT_ALT       NUMBER(18,3),
  QUANT_IN_PACK   NUMBER(20,5),
  PRICE           NUMBER(25,10),
  PRICE_BASE      NUMBER(25,10),
  TYPE            NUMBER(17,2),
  QUANT_PLAN      NUMBER(17,3),
  QUANT_ALT_PLAN  NUMBER(17,3),
  QUANT_SALE      NUMBER(17,3),
  QUANT_ALT_SALE  NUMBER(17,3),
  STOR_SIGN       NUMBER(1),
  COMMIS_SIGN     NUMBER(1)
)
TABLESPACE PARUSTEMP
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          344M
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;
 
--  Copy the data from the renamed table  
INSERT /*+ APPEND */
INTO PARUS.STROPERJRN_D INS_TBL
(GROUP_IDENT, IDENT, AUTHID, STORE, 
STORE_NAME, CURRENCY, NOM_GRP, NOM_GRP_NAME, 
NOMEN, NOMEN_NAME, MODIF, MODIF_NAME, 
PACK, PACK_NAME, PARTY, SERNUMB, 
GTD, COUNTRY, MEAS_MAIN, MEAS_ALT, 
MEAS_PACK, QUANT, QUANT_ALT, QUANT_IN_PACK, 
PRICE, PRICE_BASE, TYPE, QUANT_PLAN, 
QUANT_ALT_PLAN, QUANT_SALE, QUANT_ALT_SALE, STOR_SIGN, 
COMMIS_SIGN)
SELECT 
GROUP_IDENT, IDENT, AUTHID, STORE, 
STORE_NAME, CURRENCY, NOM_GRP, NOM_GRP_NAME, 
NOMEN, NOMEN_NAME, MODIF, MODIF_NAME, 
PACK, PACK_NAME, PARTY, SERNUMB, 
GTD, COUNTRY, MEAS_MAIN, MEAS_ALT, 
MEAS_PACK, QUANT, QUANT_ALT, QUANT_IN_PACK, 
PRICE, PRICE_BASE, TYPE, QUANT_PLAN, 
QUANT_ALT_PLAN, QUANT_SALE, QUANT_ALT_SALE, STOR_SIGN, 
COMMIS_SIGN
FROM PARUS.STROPERJRN_D_X SEL_TBL ; 
  
Commit ; 
  

-- Drop all other user named indexes 
DROP INDEX PARUS.STROPERJRN_D_I_MODIF_STORE_PAR ;
DROP INDEX PARUS.I_STROPERJRN_D_IDENT ;
DROP INDEX PARUS.I_STROPERJRN_D_AUTHID ;
DROP INDEX PARUS.I_STROPERJRN_D_GR_ID ;

 
--  DROP the renamed table  
 
DROP TABLE PARUS."STROPERJRN_D_X" ; 
  
 
ALTER TABLESPACE PARUSTMP COALESCE  ; 
  


--  Recreate Indexes, Constraints, and Grants 

CREATE INDEX PARUS.STROPERJRN_D_I_MODIF_STORE_PAR ON PARUS.STROPERJRN_D
(MODIF, STORE, PARTY, AUTHID)
LOGGING
TABLESPACE PARUSTMPIDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
ONLINE;


CREATE INDEX PARUS.I_STROPERJRN_D_IDENT ON PARUS.STROPERJRN_D
(IDENT)
NOLOGGING
TABLESPACE PARUSTMPIDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
ONLINE;


CREATE INDEX PARUS.I_STROPERJRN_D_AUTHID ON PARUS.STROPERJRN_D
(AUTHID)
NOLOGGING
TABLESPACE PARUSTMPIDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
ONLINE;


CREATE INDEX PARUS.I_STROPERJRN_D_GR_ID ON PARUS.STROPERJRN_D
(GROUP_IDENT)
LOGGING
TABLESPACE PARUSTMPIDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
ONLINE;
 
--  There are no FKeys that reference the new table to recreate. 
 

--  Analyze New Table 
Analyze Table PARUS.STROPERJRN_D Compute Statistics;

 
--  Recompile any dependent objects 
 
ALTER FUNCTION "PARUS"."F_GETOST_505_VZ" COMPILE ; 
  
ALTER FUNCTION "PVZ"."F_GETOST" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."ASTR1" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."OBS2" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."PR_OCO_RASH" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."P_KOMI_OB" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."P_KOMI_RASH" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."P_STROPERJRN_CLEAR" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."P_STROPERJRN_D" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_FORSUPPLY_VZ" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_P_GET502VZ" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_P_RASH" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_P_STROPERJRN_ANLTURNS_NL" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_REALIZ_ALL_VZ" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_ARCH_FAS_" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_FASNAL_ALL" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_GET_TMC" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_NALIV_ALL" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_OPOST_FAS" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_OSNSR" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_PRICED" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_RASH_FAS" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_REALFAS" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_REALFAS_LUK" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_REALFAS_PART" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_REZALL_COUNT" COMPILE ; 
  
ALTER PROCEDURE "PARUS"."SNP_VZ_REZALL_GET" COMPILE ; 
  
ALTER VIEW "LUTKOVA"."SNP_V_O_K1_NL" COMPILE ; 
  
ALTER VIEW "LUTKOVA"."SNP_V_STROPERJRN_ANLTURNS_NL" COMPILE ; 
  
ALTER VIEW "PARUS"."KOMI_V_O_K1" COMPILE ; 
  
ALTER VIEW "PARUS"."KOMI_V_O_K2" COMPILE ; 
  
ALTER VIEW "PARUS"."SNP_VR_RASH" COMPILE ; 
  
ALTER VIEW "PARUS"."SNP_V_O_K1_NL" COMPILE ; 
  
ALTER VIEW "PARUS"."SNP_V_O_K2_NL" COMPILE ; 
  
ALTER VIEW "PARUS"."SNP_V_STROPERJRN_ANLTURNS_NB" COMPILE ; 
  
ALTER VIEW "PARUS"."VR_MAX_RASH" COMPILE ; 
  
ALTER VIEW "PARUS"."VR_STROPERJRN_D" COMPILE ; 
  
ALTER VIEW "PARUS"."VR_STROPERJRN_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_GETOST_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_OSNSR_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_PRICELST_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_REALFAS_PART_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_REALFAS_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_REZ_DATA_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_STROPEXP_VZ" COMPILE ; 
  
ALTER VIEW "PARUS"."V_SNP_VZ_AGNREAL" COMPILE ; 
  
ALTER VIEW "PVZ"."V_502REZ_VZ" COMPILE ; 
  
ALTER VIEW "PVZ"."V_PVZ_OST" COMPILE ; 
  
--  Rebuild triggers for the new table. 
CREATE OR REPLACE TRIGGER PARUS.T_STROPERJRN_D_BINSERT
before insert ON PARUS.STROPERJRN_D for each row
begin
:new.AUTHID := user;
end;
/
SHOW ERRORS;
