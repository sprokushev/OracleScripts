--
-- FOR_PARUS  (Package) 
--
CREATE OR REPLACE PACKAGE MASTER.For_Parus AS

TYPE CURSTYPE IS REF CURSOR;

  PROCEDURE RENEW_BILLS_PARUS(DATE_BEG DATE:=TRUNC(SYSDATE,'MONTH') ,DATE_END DATE:=SYSDATE, param1 VARCHAR2:='', param2 VARCHAR2:='', param3 VARCHAR2:='');
  PROCEDURE RENEW_BILL_POS_PARUS(DATE_BEG DATE:=TRUNC(SYSDATE,'MONTH') ,DATE_END DATE:=SYSDATE, param1 VARCHAR2:='', param2 VARCHAR2:='', param3 VARCHAR2:='');
  PROCEDURE RENEW_dog_PARUS;
  PROCEDURE UPDATE_SNAPSHOTS_REQV;
  FUNCTION GET_NUM_DOG(BASE_NUMB VARCHAR2) RETURN VARCHAR2;
  FUNCTION GET_DOG_ID(BASE_NUMB VARCHAR2) RETURN NUMBER;
  FUNCTION GET_NUM_SVED(PRIM VARCHAR2) RETURN NUMBER;
  FUNCTION GET_NUM_KVIT(PRIM VARCHAR2) RETURN NUMBER;
  
END;

/
