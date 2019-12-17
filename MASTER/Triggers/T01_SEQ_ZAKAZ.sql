--
-- T01_SEQ_ZAKAZ  (Trigger) 
--
CREATE OR REPLACE TRIGGER MASTER.T01_SEQ_ZAKAZ
BEFORE INSERT OR UPDATE
ON MASTER.ZAKAZ
FOR EACH ROW
BEGIN

  -- ���������� ID
  IF :new.ID=0 OR :new.ID IS NULL THEN
    SELECT SEQ_MONTH_ALL.NEXTVAL INTO :new.ID FROM DUAL;
  END IF;

END;
/

