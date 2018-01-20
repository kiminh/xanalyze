
  CREATE TABLE "BI"."SHAINCAP" 
   (	"CODIGO" VARCHAR2(2 BYTE) NOT NULL ENABLE, 
	"INCAP" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "SHAINCAP_PK" PRIMARY KEY ("CODIGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "BI"."SHAINCAP"."CODIGO" IS 'CODIGO DE LA INCAPACIDAD';
 
   COMMENT ON COLUMN "BI"."SHAINCAP"."INCAP" IS 'DESCRIPCION DE LA INCAPACIDAD';
 