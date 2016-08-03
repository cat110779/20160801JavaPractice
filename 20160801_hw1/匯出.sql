--------------------------------------------------------
--  已建立檔案 - 星期三-六月-15-2016   
--------------------------------------------------------
DROP TABLE "TEAM3"."CUSTOMER";
DROP TABLE "TEAM3"."DEPOSIT";
DROP TABLE "TEAM3"."ITEM";
DROP TABLE "TEAM3"."MEMBER";
DROP TABLE "TEAM3"."M_ORDER";
DROP TABLE "TEAM3"."ORDERS";
DROP TABLE "TEAM3"."PRODUCT";
DROP TABLE "TEAM3"."RESTAURANT";
DROP SEQUENCE "TEAM3"."CUSTOMER_ID_SEQ";
DROP SEQUENCE "TEAM3"."DEPOSIT_ID_SEQ";
DROP SEQUENCE "TEAM3"."ITEM_ID_SEQ";
DROP SEQUENCE "TEAM3"."MEMBER_ID_SEQ";
DROP SEQUENCE "TEAM3"."ORDERS_ID_SEQ";
DROP SEQUENCE "TEAM3"."PRODUCT_ID_SEQ";
DROP SEQUENCE "TEAM3"."RESTAURANT_ID_SEQ";
--------------------------------------------------------
--  DDL for Sequence CUSTOMER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM3"."CUSTOMER_ID_SEQ"  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 70 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPOSIT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM3"."DEPOSIT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 42 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ITEM_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM3"."ITEM_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 782 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM3"."MEMBER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 18 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDERS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM3"."ORDERS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 125 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM3"."PRODUCT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 114 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESTAURANT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM3"."RESTAURANT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "TEAM3"."CUSTOMER" ("ID" NUMBER(6,0), "ITEM_ID" NUMBER(6,0), "MEMBER_ACCOUNT" VARCHAR2(20), "COUNTS" NUMBER(6,0), "MONEY" NUMBER(6,0), "C_DATE" TIMESTAMP (6), "STATUS" VARCHAR2(20), "ORDER_ID" NUMBER) ;
--------------------------------------------------------
--  DDL for Table DEPOSIT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."DEPOSIT" ("ID" NUMBER(6,0), "DEPOSIT_CASH" NUMBER(6,0), "DEPOSIT_TIME" TIMESTAMP (6), "MEMBER_ACCOUNT" VARCHAR2(16)) ;
--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "TEAM3"."ITEM" ("ID" NUMBER(6,0), "PRODUCT_ID" NUMBER(6,0), "ORDER_ID" NUMBER(6,0), "PRODUCT_NAME" VARCHAR2(60)) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "TEAM3"."MEMBER" ("ID" NUMBER(6,0), "ACCOUNT" VARCHAR2(16), "PASSWORD" VARCHAR2(16), "EMAIL" VARCHAR2(255), "CASH" NUMBER(8,0) DEFAULT 0, "CREATE_DATE" TIMESTAMP (6), "M_TYPE" VARCHAR2(32)) ;
--------------------------------------------------------
--  DDL for Table M_ORDER
--------------------------------------------------------

  CREATE TABLE "TEAM3"."M_ORDER" ("MEMBER_ACCOUNT" VARCHAR2(16), "ORDER_ID" NUMBER, "JOIN_DATE" TIMESTAMP (6)) ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "TEAM3"."ORDERS" ("ID" NUMBER(6,0), "RESTAURANT_ID" NUMBER(6,0), "BEGIN_TIME" TIMESTAMP (6), "END_TIME" TIMESTAMP (6), "END_MONEY" NUMBER(6,0), "MEMBER_ACCOUNT" VARCHAR2(16), "STATUS" VARCHAR2(10), "INFO" VARCHAR2(255), "RESTAURANT_NAME" VARCHAR2(60)) ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."PRODUCT" ("ID" NUMBER(6,0), "NAME" VARCHAR2(60), "PRICE" NUMBER(6,0), "RESTAURANT_ID" NUMBER(6,0)) ;
--------------------------------------------------------
--  DDL for Table RESTAURANT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."RESTAURANT" ("ID" NUMBER(6,0), "NAME" VARCHAR2(32), "BRIEF" VARCHAR2(255), "ADDR" VARCHAR2(255), "PHONE" VARCHAR2(20), "R_TYPE" VARCHAR2(10), "IMAGE" VARCHAR2(255)) ;
REM INSERTING into TEAM3.CUSTOMER
SET DEFINE OFF;
REM INSERTING into TEAM3.DEPOSIT
SET DEFINE OFF;
REM INSERTING into TEAM3.ITEM
SET DEFINE OFF;
REM INSERTING into TEAM3.MEMBER
SET DEFINE OFF;
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (2,'admin','admin','admin@gmail.com',8315,to_timestamp('23-5月 -16 02.01.09.550000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'高級會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (20,'fju','fju','nomad341725@gmail.com',0,to_timestamp('04-6月 -16 09.34.46.398000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (23,'aaa','aaa','nomad341725@gmail.com',0,to_timestamp('06-6月 -16 02.37.24.477000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (17,'gundam','gun','gundam',0,to_timestamp('04-6月 -16 08.48.39.558000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (12,'Dasein','being','Dasein',0,to_timestamp('27-5月 -16 02.26.32.414000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (15,'a183','123123','a183cute33@gmail.com',0,to_timestamp('27-5月 -16 05.08.28.859000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (16,'moon','moon','nomad341725@gmail.com',0,to_timestamp('04-6月 -16 08.45.15.983000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (26,'jeffery','123','1231@gmail.com',0,to_timestamp('07-6月 -16 08.19.58.578000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (6,'rain','RR54qy','nomad341725@gmail.com',0,to_timestamp('27-5月 -16 03.10.50.682000000 上午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (8,'rainy','rainy','rainy',0,to_timestamp('27-5月 -16 03.27.33.999000000 上午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (25,'cypher','cypher','nomad341725@gmail.com',0,to_timestamp('07-6月 -16 04.09.13.633000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (11,'sun','sun','sun',420,to_timestamp('27-5月 -16 03.30.12.094000000 上午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (22,'zeit','zeit','nomad341725@gmail.com',0,to_timestamp('05-6月 -16 01.13.20.779000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (27,'hddoddiod','123','djdddjj@gmail.com',0,to_timestamp('07-6月 -16 08.21.28.626000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
Insert into TEAM3.MEMBER (ID,ACCOUNT,PASSWORD,EMAIL,CASH,CREATE_DATE,M_TYPE) values (33,'jeffery840106','51RO5752','a183cute33@gmail.com',0,to_timestamp('07-6月 -16 08.47.07.947000000 下午','DD-MON-RR HH.MI.SSXFF AM'),'一般會員');
REM INSERTING into TEAM3.M_ORDER
SET DEFINE OFF;
REM INSERTING into TEAM3.ORDERS
SET DEFINE OFF;
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (121,7,to_timestamp('08-6月 -16 08.12.59.527000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-6月 -16 09.12.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),100,'admin','已結單',null,'鬍鬚張');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (122,10,to_timestamp('08-6月 -16 08.14.01.165000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-6月 -16 09.13.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),500,'admin','已結單',null,'魏姐包心粉圓');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (123,1,to_timestamp('09-6月 -16 01.30.25.807000000 上午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('09-6月 -16 02.30.00.000000000 上午','DD-MON-RR HH.MI.SSXFF AM'),300,'admin','已結單',null,'麥當勞');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (124,1,to_timestamp('13-6月 -16 09.57.05.925000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('13-6月 -16 10.56.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),100,'admin','已結單',null,'麥當勞');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (120,7,to_timestamp('08-6月 -16 08.06.32.872000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-6月 -16 09.05.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),700,'admin','已結單',null,'鬍鬚張');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (118,10,to_timestamp('08-6月 -16 12.52.51.228000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-6月 -16 01.52.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),100,'admin','已截止',null,'魏姐包心粉圓');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (119,1,to_timestamp('08-6月 -16 02.27.32.222000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-6月 -16 03.27.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),500,'admin','已截止',null,'麥當勞');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (116,2,to_timestamp('08-6月 -16 12.52.27.407000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-6月 -16 01.52.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),100,'admin','已截止',null,'悟饕池上飯包');
Insert into TEAM3.ORDERS (ID,RESTAURANT_ID,BEGIN_TIME,END_TIME,END_MONEY,MEMBER_ACCOUNT,STATUS,INFO,RESTAURANT_NAME) values (117,2,to_timestamp('08-6月 -16 12.52.27.639000000 下午','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-6月 -16 01.52.00.000000000 下午','DD-MON-RR HH.MI.SSXFF AM'),100,'admin','已截止',null,'悟饕池上飯包');
REM INSERTING into TEAM3.PRODUCT
SET DEFINE OFF;
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (17,'吮指雙雞重量級XL套餐',165,5);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (18,'乳酪起司雞腿堡餐',129,5);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (19,'墨西哥莎莎霸王捲套餐',119,5);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (20,'義式香草紙包雞',129,5);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (1,'大麥克',60,1);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (2,'吉士堡',50,1);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (4,'麥脆雞',50,1);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (3,'勁辣雞腿堡',60,1);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (5,'醬燒豚肉飯',85,2);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (6,'正宗池上便當',70,2);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (7,'雞腿飯',75,2);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (8,'黃金排骨飯',80,2);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (9,'二男海鮮丼',520,3);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (10,'男子漢海鮮丼',360,3);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (11,'娘子海鮮丼',320,3);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (12,'荒海散壽司丼',280,3);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (13,'鮮蝦燒賣',65,4);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (14,'魚翅蒸餃',65,4);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (15,'牛肉腸粉',65,4);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (16,'鮮蝦腸粉',65,4);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (109,'布丁煉乳',50,10);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (107,'包心桂圓銀耳',55,10);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (108,'優格雪沙',50,10);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (110,'桂圓紫米粥',65,10);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (111,'蜜汁雞腿飯.',100,11);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (112,'脆皮鴨腿飯',100,11);
Insert into TEAM3.PRODUCT (ID,NAME,PRICE,RESTAURANT_ID) values (113,'港式臘味飯',90,11);
REM INSERTING into TEAM3.RESTAURANT
SET DEFINE OFF;
Insert into TEAM3.RESTAURANT (ID,NAME,BRIEF,ADDR,PHONE,R_TYPE,IMAGE) values (1,'麥當勞',null,'242新北市新莊區中正路617號','(02)2902-2181','速食',null);
Insert into TEAM3.RESTAURANT (ID,NAME,BRIEF,ADDR,PHONE,R_TYPE,IMAGE) values (2,'悟饕池上飯包',null,'242新北市新莊區中港一街27號','(02)2998-1191','便當',null);
Insert into TEAM3.RESTAURANT (ID,NAME,BRIEF,ADDR,PHONE,R_TYPE,IMAGE) values (3,'二男小家料理',null,'235新北市中和區中山路三段36號','(02)8227-5280','日式',null);
Insert into TEAM3.RESTAURANT (ID,NAME,BRIEF,ADDR,PHONE,R_TYPE,IMAGE) values (4,'黃師傅港式點心',null,'220新北市板橋區中正路166號','(02)2271-0250','點心',null);
Insert into TEAM3.RESTAURANT (ID,NAME,BRIEF,ADDR,PHONE,R_TYPE,IMAGE) values (5,'肯德基',null,'242新北市新莊區民安路157號','(02)2202-0124','速食',null);
Insert into TEAM3.RESTAURANT (ID,NAME,BRIEF,ADDR,PHONE,R_TYPE,IMAGE) values (11,'金源燒臘店',null,'台北市大安區瑞安街116號','(02)2325-4872','便當',null);
Insert into TEAM3.RESTAURANT (ID,NAME,BRIEF,ADDR,PHONE,R_TYPE,IMAGE) values (10,'魏姐包心粉圓',null,' 108台北市萬華區桂林路1號號 1 樓','(02)2383-0116','點心',null);
--------------------------------------------------------
--  DDL for Index RESTAURANT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."RESTAURANT_UK1" ON "TEAM3"."RESTAURANT" ("PHONE") ;
--------------------------------------------------------
--  DDL for Index UK_MEMBER_ACCOUNT
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."UK_MEMBER_ACCOUNT" ON "TEAM3"."MEMBER" ("ACCOUNT") ;
--------------------------------------------------------
--  DDL for Index PK_RESTAURANT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."PK_RESTAURANT_ID" ON "TEAM3"."RESTAURANT" ("ID") ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."PK_PRODUCT_ID" ON "TEAM3"."PRODUCT" ("ID") ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."PK_MEMBER_ID" ON "TEAM3"."MEMBER" ("ID") ;
--------------------------------------------------------
--  DDL for Index PK_DEPOSIT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."PK_DEPOSIT_ID" ON "TEAM3"."DEPOSIT" ("ID") ;
--------------------------------------------------------
--  DDL for Index PK_CUSTOMER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."PK_CUSTOMER_ID" ON "TEAM3"."CUSTOMER" ("ID") ;
--------------------------------------------------------
--  DDL for Index PK_ITEM_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."PK_ITEM_ID" ON "TEAM3"."ITEM" ("ID") ;
--------------------------------------------------------
--  DDL for Index M_ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."M_ORDER_PK" ON "TEAM3"."M_ORDER" ("MEMBER_ACCOUNT", "ORDER_ID", "JOIN_DATE") ;
--------------------------------------------------------
--  DDL for Index PK_ORDERS_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3"."PK_ORDERS_ID" ON "TEAM3"."ORDERS" ("ID") ;
--------------------------------------------------------
--  Constraints for Table DEPOSIT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."DEPOSIT" MODIFY ("MEMBER_ACCOUNT" NOT NULL ENABLE);
  ALTER TABLE "TEAM3"."DEPOSIT" ADD CONSTRAINT "PK_DEPOSIT_ID" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "TEAM3"."ITEM" ADD CONSTRAINT "PK_ITEM_ID" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_ORDER
--------------------------------------------------------

  ALTER TABLE "TEAM3"."M_ORDER" ADD CONSTRAINT "M_ORDER_PK" PRIMARY KEY ("MEMBER_ACCOUNT", "ORDER_ID", "JOIN_DATE") ENABLE;
  ALTER TABLE "TEAM3"."M_ORDER" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3"."M_ORDER" MODIFY ("MEMBER_ACCOUNT" NOT NULL ENABLE);
  ALTER TABLE "TEAM3"."M_ORDER" MODIFY ("JOIN_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."PRODUCT" ADD CONSTRAINT "PK_PRODUCT_ID" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "TEAM3"."MEMBER" ADD CONSTRAINT "UK_MEMBER_ACCOUNT" UNIQUE ("ACCOUNT") ENABLE;
  ALTER TABLE "TEAM3"."MEMBER" MODIFY ("ACCOUNT" NOT NULL ENABLE);
  ALTER TABLE "TEAM3"."MEMBER" ADD CONSTRAINT "PK_MEMBER_ID" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "TEAM3"."ORDERS" ADD CONSTRAINT "PK_ORDERS_ID" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table RESTAURANT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."RESTAURANT" ADD CONSTRAINT "RESTAURANT_UK1" UNIQUE ("PHONE") ENABLE;
  ALTER TABLE "TEAM3"."RESTAURANT" ADD CONSTRAINT "PK_RESTAURANT_ID" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "TEAM3"."CUSTOMER" ADD CONSTRAINT "PK_CUSTOMER_ID" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "TEAM3"."CUSTOMER" ADD CONSTRAINT "FK_CUSTOMER_M_ACCOUNT" FOREIGN KEY ("MEMBER_ACCOUNT") REFERENCES "TEAM3"."MEMBER" ("ACCOUNT") ENABLE;
  ALTER TABLE "TEAM3"."CUSTOMER" ADD CONSTRAINT "FK_CUSTOMER_O_ID" FOREIGN KEY ("ORDER_ID") REFERENCES "TEAM3"."ORDERS" ("ID") ENABLE;
  ALTER TABLE "TEAM3"."CUSTOMER" ADD CONSTRAINT "FK_CUTOMER_ITEM_ID" FOREIGN KEY ("ITEM_ID") REFERENCES "TEAM3"."ITEM" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPOSIT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."DEPOSIT" ADD CONSTRAINT "FK_DEPOSIT_MEMBER_ACCOUNT" FOREIGN KEY ("MEMBER_ACCOUNT") REFERENCES "TEAM3"."MEMBER" ("ACCOUNT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "TEAM3"."ITEM" ADD CONSTRAINT "FK_ITEM_ORDER_ID" FOREIGN KEY ("ORDER_ID") REFERENCES "TEAM3"."ORDERS" ("ID") ENABLE;
  ALTER TABLE "TEAM3"."ITEM" ADD CONSTRAINT "FK_ITEM_PRODUCT_ID" FOREIGN KEY ("PRODUCT_ID") REFERENCES "TEAM3"."PRODUCT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_ORDER
--------------------------------------------------------

  ALTER TABLE "TEAM3"."M_ORDER" ADD CONSTRAINT "M_ORDER_MEMBER_ACCOUNT_FK" FOREIGN KEY ("MEMBER_ACCOUNT") REFERENCES "TEAM3"."MEMBER" ("ACCOUNT") ENABLE;
  ALTER TABLE "TEAM3"."M_ORDER" ADD CONSTRAINT "M_ORDER_ORDER_ID" FOREIGN KEY ("ORDER_ID") REFERENCES "TEAM3"."ORDERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "TEAM3"."ORDERS" ADD CONSTRAINT "FK_ORDERS_MEMBER_ID" FOREIGN KEY ("MEMBER_ACCOUNT") REFERENCES "TEAM3"."MEMBER" ("ACCOUNT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."PRODUCT" ADD CONSTRAINT "FK_PRODUCT_RESTAURANT_ID" FOREIGN KEY ("RESTAURANT_ID") REFERENCES "TEAM3"."RESTAURANT" ("ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger CUSTOMER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM3"."CUSTOMER_TRG" 
before insert on customer
for each row begin
if :new.id is null then
select customer_id_seq.nextval into :new.id from dual;
end if;
end;
/
ALTER TRIGGER "TEAM3"."CUSTOMER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEPOSIT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM3"."DEPOSIT_TRG" 
before insert on deposit
for each row begin
if :new.id is null then
select deposit_id_seq.nextval into :new.id from dual;
end if;
end;
/
ALTER TRIGGER "TEAM3"."DEPOSIT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ITEM_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM3"."ITEM_TRG" 
before insert on item
for each row begin
if :new.id is null then
select item_id_seq.nextval into :new.id from dual;
end if;
end;
/
ALTER TRIGGER "TEAM3"."ITEM_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MEMBER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM3"."MEMBER_TRG" 
before insert on member
for each row begin
if :new.id is null then
select member_id_seq.nextval into :new.id from dual;
end if;
end;
/
ALTER TRIGGER "TEAM3"."MEMBER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ORDERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM3"."ORDERS_TRG" 
before insert on orders
for each row begin
if :new.id is null then
select orders_id_seq.nextval into :new.id from dual;
end if;
end;
/
ALTER TRIGGER "TEAM3"."ORDERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM3"."PRODUCT_TRG" 
before insert on product
for each row begin
if :new.id is null then
select product_id_seq.nextval into :new.id from dual;
end if;
end;
/
ALTER TRIGGER "TEAM3"."PRODUCT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESTAURANT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM3"."RESTAURANT_TRG" 
before insert on restaurant
for each row begin
if :new.id is null then
select restaurant_id_seq.nextval into :new.id from dual;
end if;
end;
/
ALTER TRIGGER "TEAM3"."RESTAURANT_TRG" ENABLE;
