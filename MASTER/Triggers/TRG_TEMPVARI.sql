--
-- TRG_TEMPVARI  (Trigger) 
--
CREATE OR REPLACE TRIGGER MASTER.TRG_TEMPVARI
BEFORE INSERT OR UPDATE
ON MASTER.TEMPVARI
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
  IF INSERTING() OR UPDATING() THEN
    IF :NEW.ID=0 OR :NEW.ID IS NULL THEN
      tmpVar := 0;
      SELECT seq_TempVari.NEXTVAL INTO tmpVar FROM dual;
     :NEW.ID := tmpVar;
    END IF;
	:NEW.TERMINAL_NAME:=For_Init.GetCurrTerm;
	:NEW.OSUSER_NAME:=For_Init.GetCurrUser;
	IF :NEW.BEGIN_DATE IS NULL THEN
  	  :NEW.BEGIN_DATE := SYSDATE;
	END IF;  
	IF :NEW.END_DATE IS NULL THEN
	  :NEW.END_DATE:=:NEW.BEGIN_DATE+1;
	END IF;
	:NEW.TERMINAL_NAME:=NLS_UPPER(:NEW.TERMINAL_NAME);
	:NEW.OSUSER_NAME:=NLS_UPPER(:NEW.OSUSER_NAME);
	:NEW.APP_NAME:=NLS_UPPER(:NEW.APP_NAME);
	:NEW.UNIT_NAME:=NLS_UPPER(:NEW.UNIT_NAME);
	:NEW.VARI_TYPE:=NLS_UPPER(:NEW.VARI_TYPE);
	:NEW.VARI_NAME:=NLS_UPPER(:NEW.VARI_NAME);
  END IF;
END TRG_TEMPVARI;
/

