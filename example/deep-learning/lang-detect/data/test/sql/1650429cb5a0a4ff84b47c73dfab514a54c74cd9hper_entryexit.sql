--------------------------------------------------------
--  File created - Wednesday-May-28-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HPER_ENTRYEXIT
--------------------------------------------------------

  CREATE TABLE HPER_ENTRYEXIT 
   (	SCHEME VARCHAR2(100 BYTE), 
	PLAN VARCHAR2(100 BYTE), 
	ENTRY_LOAD NUMBER(21,5), 
	EXIT_LOAD NUMBER(21,5), 
	INPUT_DATE DATE, 
	UPLOAD_DT DATE, 
	STATUS VARCHAR2(2 BYTE), 
	VALUE_DATE DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE HHI_TBS ;


