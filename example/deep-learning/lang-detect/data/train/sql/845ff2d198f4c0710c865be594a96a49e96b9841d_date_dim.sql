SET DEFINE OFF;
CREATE TABLE D_DATE_DIM
(
  DAY_ID                     NUMBER,
  CALENDAR_DATE              DATE,
  FULL_DAY_NAME              VARCHAR2(10 BYTE),
  SHORT_DAY_NAME             VARCHAR2(3 BYTE),
  CALENDAR_MONTH             VARCHAR2(3 BYTE),
  CALENDAR_QUARTER           VARCHAR2(1 BYTE),
  CALENDAR_YEAR              VARCHAR2(4 BYTE),
  DAY_CALENDAR_QTR_BEGIN     VARCHAR2(1 BYTE),
  DAY_CALENDAR_QTR_END       VARCHAR2(1 BYTE),
  DAY_CALENDAR_YEAR_BEGIN    VARCHAR2(1 BYTE),
  DAY_CALENDAR_YEAR_END      VARCHAR2(1 BYTE),
  DAY_FINANCIAL_QTR_BEGIN    VARCHAR2(1 BYTE),
  DAY_FINANCIAL_QTR_END      VARCHAR2(1 BYTE),
  DAY_FINANCIAL_YEAR_BEGIN   VARCHAR2(1 BYTE),
  DAY_FINANCIAL_YEAR_END     VARCHAR2(1 BYTE),
  DAY_REPORTING_WEEK_BEGIN   VARCHAR2(1 BYTE),
  DAY_REPORTING_WEEK_END     VARCHAR2(1 BYTE),
  DAY_REPORTING_QTR_BEGIN    VARCHAR2(1 BYTE),
  DAY_REPORTING_QTR_END      VARCHAR2(1 BYTE),
  DAY_REPORTING_YEAR_BEGIN   VARCHAR2(1 BYTE),
  DAY_REPORTING_YEAR_END     VARCHAR2(1 BYTE),
  DAY_CAL_MONTH_BEGIN        VARCHAR2(1 BYTE),
  DAY_CAL_MONTH_END          VARCHAR2(1 BYTE),
  FINANCIAL_QUARTER          VARCHAR2(1 BYTE),
  FINANCIAL_YEAR             VARCHAR2(4 BYTE),
  REPORTING_QUARTER          VARCHAR2(1 BYTE),
  REPORTING_YEAR             VARCHAR2(4 BYTE),
  FULL_MONTH_NAME            VARCHAR2(10 BYTE),
  SHORT_MONTH_NAME           VARCHAR2(3 BYTE),
  WEEK_FRIDAY                DATE,
  WEEK_MONDAY                DATE,
  WEEK_SATURDAY              DATE,
  WEEK_SUNDAY                DATE,
  JULIAN_COUNTER             NUMBER,
  LEAP_YEAR_IND              VARCHAR2(1 BYTE),
  PUBLIC_HOLIDAY_IND         VARCHAR2(1 BYTE),
  DATE_LAST_YEAR_EQUIVALENT  DATE,
  FISCAL_WEEK_NO             VARCHAR2(3 BYTE),
  FISCAL_MONTH_NO            VARCHAR2(3 BYTE),
  FISCAL_YEAR                VARCHAR2(4 BYTE),
  SEASON                     VARCHAR2(20 BYTE),
  PERIOD_A                   VARCHAR2(20 BYTE),
  PERIOD_B                   VARCHAR2(20 BYTE),
  PERIOD_C                   VARCHAR2(20 BYTE),
  PERIOD_D                   VARCHAR2(20 BYTE)
)
TABLESPACE DTW_ADV_TABLES
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    20
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX DATE_DIM_PK ON D_DATE_DIM
(DAY_ID)
LOGGING
TABLESPACE DTW_ADV_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX IDX_DAY_DATE ON D_DATE_DIM
(CALENDAR_DATE)
LOGGING
TABLESPACE DTW_ADV_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


CREATE INDEX IDX_DAY_FINANYEAR ON D_DATE_DIM
(FINANCIAL_YEAR)
LOGGING
TABLESPACE DTW_ADV_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


CREATE INDEX IDX_DAY_FINYEAR ON D_DATE_DIM
(FISCAL_YEAR)
LOGGING
TABLESPACE DTW_ADV_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


ALTER TABLE D_DATE_DIM ADD (
  CONSTRAINT D_DATE_DIM_PK
  PRIMARY KEY
  (DAY_ID)
  USING INDEX DATE_DIM_PK
  ENABLE VALIDATE);