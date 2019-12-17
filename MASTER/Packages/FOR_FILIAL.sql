--
-- FOR_FILIAL  (Package) 
--
CREATE OR REPLACE PACKAGE MASTER.For_Filial AS

-- ��������� ����� �� ������
FUNCTION LOAD_FROM_BUF RETURN NUMBER;

-- ������� ������ � AZC_OPERATION
PROCEDURE MOVE_TO_AZC_OPER (PeriodId NUMBER);

-- ���������� ������ ��� ������ "����-���� �������� � ����������"
PROCEDURE PF_REALIZ(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, TIP_CALC NUMBER DEFAULT 0);

-- ��������� ������� �� �������������
FUNCTION LAST_OST(pFILIAL_ID NUMBER,pFIL_PERIOD_ID NUMBER,pFIL_ORG_ID NUMBER,pREP_TYPE_ID NUMBER) RETURN NUMBER;

-- ���������� ������ ��� ������ "�������� ���������� � ��� � ��������"
PROCEDURE FIL_SUT_REAL(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2,
  ADD_TRANZIT NUMBER DEFAULT 0,ONLY_FAS NUMBER DEFAULT 0, TIP_CALC NUMBER DEFAULT 0, 
  ONLY_MAIN NUMBER DEFAULT 0, FAS_IN_RUB NUMBER DEFAULT 0, pPROD_TYPE NUMBER DEFAULT 5);

-- ���������� ������ ��� ������ "�������� ���������� � ��� � ��������"
PROCEDURE FIL_SUT_REAL_TRANSIT(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2);
  
-- ���������� ������ ��� ������ "���������� ������� � ��� � ��������"
PROCEDURE FIL_SUT_REAL_FAS(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2);

-- ���������� ������ ��� ������ "����-���� ���������� �������� � ������-���"
PROCEDURE FIL_SUT_REAL_PF(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2);
  
-- ���������� ������ ��� ������ "����-���� ���������� ������� � ������-���"
PROCEDURE FIL_SUT_REAL_FAS_PF(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2);

-- ���������� ������ ��� ������ "���� ���������� �������"
PROCEDURE FIL_SVOD_REAL(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2);

-- ���������� ������ ��� ������ "���������� �� ����������� �����"
PROCEDURE FIL_SOBS_REAL(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2);
  
-- ���������� ������ ��� ������ "������� � ������ �/�� (����������)"
PROCEDURE FIL_STAT_REAL(DATE_BEG VARCHAR2, DATE_END VARCHAR2, FILIAL_ID VARCHAR2, 
  ORG_KIND_GRP VARCHAR2, ORG_STRU_ID VARCHAR2, PROD_GR_ID VARCHAR2, PROD_ID VARCHAR2);

-- ������� �� ���� � ��
FUNCTION GET_OST_BEGIN_MAS(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pDATE DATE DEFAULT SYSDATE) RETURN NUMBER;

-- ������� �� ���� � ���
FUNCTION GET_OST_BEGIN_VOL(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pDATE DATE DEFAULT SYSDATE) RETURN NUMBER;

-- ������� �� ���� � ���.
FUNCTION GET_OST_BEGIN_SUM(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pDATE DATE DEFAULT SYSDATE) RETURN NUMBER;

-- ������� �� ����� � ��
FUNCTION GET_OST_END_MAS(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pDATE DATE DEFAULT SYSDATE) RETURN NUMBER;

-- ������� �� ����� � ���
FUNCTION GET_OST_END_VOL(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pDATE DATE DEFAULT SYSDATE) RETURN NUMBER;

-- ������� �� ����� � ���.
FUNCTION GET_OST_END_SUM(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pDATE DATE DEFAULT SYSDATE) RETURN NUMBER;

-- ������������� ������� ������� �������  
FUNCTION GET_OST(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pDATE DATE DEFAULT SYSDATE, pUTRO NUMBER DEFAULT 0, pTIP_OST NUMBER DEFAULT 0) RETURN NUMBER;

-- ������������� ������� ������� ������� c ������ ������������   
FUNCTION GET_OST_SOBS(pORG_STRU_ID NUMBER, pPROD_ID_NPR VARCHAR2, pSOBSTV_ID NUMBER, pDATE DATE DEFAULT SYSDATE, pUTRO NUMBER DEFAULT 0, pTIP_OST NUMBER DEFAULT 0) RETURN NUMBER;

-- ������� ������ �� ������ � AZC_OPERATION
PROCEDURE PARUS_TO_AZC_OPER (pDATE_BEG VARCHAR2, pDATE_END VARCHAR2, pFilial NUMBER DEFAULT NULL, pOrgStru NUMBER DEFAULT NULL, ADD_SOPUT NUMBER DEFAULT 0, IS_SOPUT NUMBER DEFAULT 0);

-- ���������� ������ ��� ��������� ��� (� ����� �� ���)
PROCEDURE SoobPRN_X6(DATE_BEG VARCHAR2, DATE_END VARCHAR2);  

-- ���������� ������ ��� ��������� ��� (�������� ���)
PROCEDURE SoobPRN_X7(DATE_BEG VARCHAR2, DATE_END VARCHAR2);  

-- ���������� ������ ��� ��������� ��� (�����������)
PROCEDURE SoobPRN_X8(DATE_BEG VARCHAR2, DATE_END VARCHAR2);  

-- ���������� ������ ��� ��������� ��� (� ����� �� ���)
PROCEDURE SoobFRN_X6(DATE_BEG VARCHAR2, DATE_END VARCHAR2);  

-- ���������� ������ ��� ��������� ��� (�������� ���)
PROCEDURE SoobFRN_X7(DATE_BEG VARCHAR2, DATE_END VARCHAR2);  

-- ���������� ������ ��� ��������� ��� (�����������)
PROCEDURE SoobFRN_X8(DATE_BEG VARCHAR2, DATE_END VARCHAR2);

       
END;

/
