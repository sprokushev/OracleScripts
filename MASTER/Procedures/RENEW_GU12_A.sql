--
-- RENEW_GU12_A  (Procedure) 
--
CREATE OR REPLACE PROCEDURE MASTER.Renew_GU12_A (DATE_BEG DATE:=TRUNC(SYSDATE,'MONTH') ,DATE_END DATE:=SYSDATE, param1 VARCHAR2:='', param2 VARCHAR2:='', param3 VARCHAR2:='') AS
  IsFull NUMBER(1);
BEGIN
  RETURN;

-- ���������� ������ 
  UPDATE /*+ RULE */ GU12_A
    SET (NOM_Z, FROM_DATE, TO_DATE, SOGL_DATE, REG_DATE, DOGOVOR, STANOTPR_ID, 
	     GROTP_ID, EXPED_ID, GR_GRUZ_ID, VIDSOOB_ID, PODACH_ID, SOGL, PLATTAR_ID, 
		 PROD_ID, PRIZNOTPR_ID, VLADPUT_ID, RODVAG_ID, ISCOR) =
	(SELECT 
	   NOM_Z, FROM_DATE, TO_DATE, SOGL_DATE, REG_DATE, DOGOVOR, STANOTPR_ID, 
	   GROTP_ID, EXPED_ID, GR_GRUZ_ID, VIDSOOB_ID, PODACH_ID, SOGL, PLATTAR_ID, 
	   PROD_ID, PRIZNOTPR_ID, VLADPUT_ID, RODVAG_ID, ISCOR
     FROM v_load_gu12_a A 
    WHERE A.fox_kod=GU12_A.fox_kod) 
   WHERE EXISTS (SELECT NULL FROM v_load_gu12_a A WHERE A.fox_kod=GU12_A.fox_kod);

--  COMMIT;

-- ���������� ������   
  INSERT INTO GU12_A
    (NOM_Z, FROM_DATE, TO_DATE, SOGL_DATE, REG_DATE, DOGOVOR, STANOTPR_ID, 
	 GROTP_ID, EXPED_ID, GR_GRUZ_ID, VIDSOOB_ID, PODACH_ID, SOGL, PLATTAR_ID, 
	 PROD_ID, PRIZNOTPR_ID, VLADPUT_ID, RODVAG_ID, FOX_KOD, ISCOR)
	(SELECT /*+ RULE */ NOM_Z, FROM_DATE, TO_DATE, SOGL_DATE, REG_DATE, DOGOVOR, STANOTPR_ID, 
	        GROTP_ID, EXPED_ID, GR_GRUZ_ID, VIDSOOB_ID, PODACH_ID, SOGL, PLATTAR_ID, 
			PROD_ID, PRIZNOTPR_ID, VLADPUT_ID, RODVAG_ID, FOX_KOD, ISCOR
     FROM v_load_gu12_a A
     WHERE NOT EXISTS (SELECT null FROM GU12_A C WHERE A.fox_kod=C.fox_kod));
--  COMMIT;


-- �������� ������
  DELETE FROM /*+ RULE */ GU12_B WHERE NOT EXISTS
      (SELECT NULL FROM v_load_gu12_b B WHERE B.fox_kod=GU12_B.fox_kod)
	  AND EXISTS
	  (SELECT NULL FROM GU12_A a 
	   WHERE a.FROM_DATE BETWEEN date_beg AND date_end
	     AND a.ID=GU12_B.ID_a);

-- ���������� ������  
  UPDATE /*+ RULE */ GU12_B
    SET (PDATE, SOBSTVVAG_ID, STAN_ID, STAN_PER_ID, GRUZPOL_ID, KOL_VAG, VES, 
	     VIDOTPR_ID, MRK, ID_A, 
		 PLAT_ID, FOX_KOD,ISCOR,DATE_LETTER,NOM_LETTER, PRINVAG_ID) =
	(SELECT 
	   PDATE, SOBSTVAG_ID, STAN_ID, STAN_PER_ID, GRUZPOL_ID, KOL_VAG, VES, 
	     VIDOTPR_ID, MRK, A.ID, PLAT_ID, B.FOX_KOD,B.ISCOR,DATE_LETTER,NOM_LETTER, b.PRINVAG_ID
     FROM v_load_gu12_b B, GU12_A A 
    WHERE B.fox_kod=GU12_B.fox_kod AND B.fox_kod_a=A.fox_kod) 
   WHERE EXISTS (SELECT NULL FROM v_load_gu12_b B WHERE B.fox_kod=GU12_B.fox_kod);

-- ���������� ������   
  INSERT INTO GU12_B
    (PDATE, SOBSTVVAG_ID, STAN_ID, STAN_PER_ID, GRUZPOL_ID, KOL_VAG, VES, 
	 VIDOTPR_ID, MRK, ID_A, PLAT_ID, FOX_KOD,ISCOR,DATE_LETTER,NOM_LETTER, PRINVAG_ID)
	(SELECT /*+ RULE */ PDATE, SOBSTVAG_ID, STAN_ID, STAN_PER_ID, GRUZPOL_ID, KOL_VAG, VES, 
	        VIDOTPR_ID, MRK, A.ID, PLAT_ID, B.FOX_KOD,B.ISCOR,DATE_LETTER,NOM_LETTER, b.PRINVAG_ID
     FROM v_load_gu12_b B, GU12_A A
     WHERE B.fox_kod_a=A.fox_kod 
       AND NOT EXISTS (SELECT null FROM GU12_B C WHERE C.fox_kod=B.fox_kod));
		 
-- �������� ������  
  DELETE FROM /*+ RULE */ GU12_A WHERE NOT EXISTS
      (SELECT NULL FROM v_load_gu12_a a WHERE a.fox_kod=GU12_A.fox_kod)
	  AND GU12_A.FROM_DATE BETWEEN date_beg AND date_end;

  COMMIT;

END Renew_GU12_A;

/
