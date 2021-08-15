--CREATE DATABASE ZOODLE_SPAGHETTi;

--DROP TABLE ZOODLE_USERS;



/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////////////////--ZOODLE_USERS--//////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/



CREATE TABLE ZOODLE_USERS
(
	USERID		VARCHAR(50)		PRIMARY KEY,
	USERNAME	VARCHAR(50)		NOT NULL,
	PASSCODE	NVARCHAR(50)	NOT NULL,
	EMAIL		VARCHAR(50)		NOT NULL,
	GENDER		VARCHAR(7)		NOT NULL,
	USERTYPE	VARCHAR(16)		NOT NULL,
	PROFILEPIC	IMAGE			NOT NULL	
);

--VIEW USER TABLE   
SELECT * FROM ZOODLE_USERS;



--DELETE FROM ZOODLE_USERS WHERE USERID = 121;

--INSERT INTO ZOODLE_USERS VALUES ('121', 'IQBAL', 'IQIQ', 'IQB@GF.C', 'MALE', 'RECRUiTER', NULL);

--delete from ZOODLE_USERS where USERID = '43';




/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_FOOD_LIST--		>>>>>-ZOOKEEPER--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/




--DROP TABLE ZOODLE_FOOD_LIST;


CREATE TABLE ZOODLE_FOOD_LIST
(
	FOOD_ID		    INT				PRIMARY KEY,
	FOOD_ITEMS		VARCHAR(60)		NOT NULL,
	FOOD_COST		INT				NOT NULL,
    CAPTURERS		VARCHAR(15)		NOT NULL,
	FOOD_PICTURES   IMAGE 	
);

/*
INSERT INTO ZOODLE_FOOD_LIST VALUES(1, 'CRUSHERS', 180, 'HUMAN', NULL);
INSERT INTO ZOODLE_FOOD_LIST VALUES(2, 'MIXED GROUND BEEF', 2500, 'ANIMAL', NULL);
INSERT INTO ZOODLE_FOOD_LIST VALUES(3, 'GRAPES', 1800, 'ANIMAL', NULL);
INSERT INTO ZOODLE_FOOD_LIST VALUES(4, 'PIZZA', 120, 'HUMAN', NULL);
INSERT INTO ZOODLE_FOOD_LIST VALUES(5, 'CHICKEN FRIES', 250, 'HUMAN', NULL);
*/

SELECT * FROM ZOODLE_FOOD_LIST;





/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_ANIMALS--						--ADMIN--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/





--DROP TABLE ZOODLE_ANIMALS;


CREATE TABLE ZOODLE_ANIMALS									--RECRUITER AND VISITOR only view--
(
	ANIMAL_ID			INT				PRIMARY KEY,
	ANIMAL_NAME			VARCHAR(60)		NOT NULL,
	ANIMAL_HABITATS		VARCHAR(30)		NOT NULL,
    ANIMAL_QUANTITY		INT				NOT NULL,
	ANIMAL_PICTURES		IMAGE			
);

/*
INSERT INTO ZOODLE_ANIMALS VALUES(199, 'TIGER', 'FOREST', 15, NULL);
INSERT INTO ZOODLE_ANIMALS VALUES(211, 'LION', 'CAGE', 10, NULL);
INSERT INTO ZOODLE_ANIMALS VALUES(331, 'SWAMP DEERS', 'WATERSIDES', 30, NULL);
INSERT INTO ZOODLE_ANIMALS VALUES(500, 'KINGDUCKS', 'WATER', 50, NULL);
*/

SELECT * FROM ZOODLE_ANIMALS;




/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_INVENTORY				--ADMIN--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/




--DROP TABLE ZOODLE_INVENTORY;


CREATE TABLE ZOODLE_INVENTORY
(
	FOOD_ID				INT				PRIMARY KEY,
	FOOD_ITEMS			VARCHAR(60)		NOT NULL,
	CATEGORIES			VARCHAR(60)		NOT NULL,
	CURRENT_COST		INT				NOT NULL,
	REMAINING_STOCKS	INT				NOT NULL 	
);

/*
INSERT INTO ZOODLE_INVENTORY VALUES (1111, 'CHICKEN BUCKET', 'FAST FOOD FOR HUMAN', 1100, 120);
INSERT INTO ZOODLE_INVENTORY VALUES (2222, 'EXOTIC MILKS', 'ANIMALS FOOD INTO JAR', 3500, 550);
INSERT INTO ZOODLE_INVENTORY VALUES (3333, 'SAUSAGE', 'ANIMAL FEEDING BY --KGs--', 500, 200);
INSERT INTO ZOODLE_INVENTORY VALUES (4444, 'DRY MEATS', 'ANIMAL FEEDING BY --KGs--', 750, 1200);
INSERT INTO ZOODLE_INVENTORY VALUES (5555, 'BURGERS', 'HUMAN FOODS', 350, 500);
*/

SELECT * FROM ZOODLE_INVENTORY;




/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_SALARIES--						--RECRUiTER--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--
--SALARIES OF ZOOKEEPER PROCESSED BY RECRUiTER--
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--





--DROP TABLE ZOOKEEPER_SALARiES;

CREATE TABLE ZOOKEEPER_SALARiES						--RECRUiTER--
(
	ZooKeeper_ID				VARCHAR(50)		PRIMARY KEY,
	ZooKeeper_NAME				VARCHAR(60)		NOT NULL,
	ZooKeeper_SALARY			INT				NOT NULL,
	ZooKeeper_HIREDATE			DATE			NOT NULL,
	ZooKeeper_PICTURE			IMAGE			NOT NULL 	
);


SELECT * FROM ZOOKEEPER_SALARiES;

--delete from ZOOKEEPER_SALARiES where ZooKeeper_SALARY = 0;



/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZS_TRANSACTIONS--						--RECRUiTER--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/




/*TransactionMethods*/

--DROP TABLE ZS_TRANSACTiONS;

CREATE TABLE ZS_TRANSACTiONS		--RECRUiTER--
(
	TRANS_ID		VARCHAR(50)		PRIMARY KEY,
	SENDER_NAME		VARCHAR(60)		NOT NULL,
	TRANS_METHODS	VARCHAR(100)	NOT NULL	
);

SELECT * FROM ZS_TRANSACTiONS;





--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
--***NOT CREATED ON RECRUITER DATABASE/*
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

--DROP TABLE ZS_BKASH;

--BKASH

CREATE TABLE ZS_BKASH		--RECRUiTER--
(
	PASSCODE		NVARCHAR(60)	PRIMARY KEY,
	SENDER_ID		INT				NOT NULL,
	RECEIVER_ID		VARCHAR(50)		NOT NULL,
	AMOUNT			INT				NOT NULL	
);

SELECT * FROM ZS_BKASH;

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

--DROP TABLE ZS_CARD_PAYMENT

--ZS_CARD_PAYMENT

CREATE TABLE ZS_CARD_PAYMENT		--RECRUiTER--
(
	CARDHOLDER		VARCHAR(60)		NOT NULL,
	CARD_NUMBER		VARCHAR(30)		PRIMARY KEY,
	EXP_DATE		DATE			NOT NULL,
	CVC				INT				CHECK (CVC >= 0 AND CVC <= 9999)	NOT NULL,
	CARD_PASSCODE	NVARCHAR(60)	NOT NULL	
);

SELECT * FROM ZS_CARD_PAYMENT;






/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_VISIT_RECORDS						--RECRUITER--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/



 
/*VISIT DETAILS OF VISITORS OPERATED BY RECRUITER*/

--DROP TABLE ZOODLE_VISIT_RECORDS;


CREATE TABLE ZOODLE_VISIT_RECORDS			--RECRUITER--
(
	ViSiTOR_ID			VARCHAR(20)		PRIMARY KEY,
	ViSiTOR_NAME		VARCHAR(60)		NOT NULL,
    EMAIL				VARCHAR(60)		NOT NULL,	
	COST				INT				NOT NULL,
	COMMENTS			VARCHAR(100)
);


SELECT * FROM ZOODLE_VISIT_RECORDS;




/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_MEETiNGS						--RECRUiTER--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/



-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--
--SCHEDULE OF MEETINGS WITH OUTER COMPANIES OPERATED BY RECRUItER AND ADMIN
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--



--DROP TABLE ZOODLE_MEETiNGS;


CREATE TABLE ZOODLE_MEETiNGS				--RECRUiTER--
(
	MEETiNG_ID			VARCHAR(25)		PRIMARY KEY,
	INViTED_ORG			VARCHAR(60)		NOT NULL,
    MEETiNG_HOST		VARCHAR(60)		NOT NULL,
	MEETiNG_DATE		DATE			NOT NULL,
	MEETiNG_TIME		TIME			NOT NULL
);

--INSERT INTO ZOODLE_MEETiNGS VALUES ('21-223-1', 'UNILEVER', 'ADMIN', '2021-04-21', '18:30');


SELECT * FROM ZOODLE_MEETiNGS;

--delete from ZOODLE_MEETiNGS where MEETiNG_ID = 'dvdsv';
--delete from ZOODLE_MEETiNGS where MEETiNG_TIME = '21:14:18.6170000';



/*
//////////**CREATED ON RECRUITER DATABASE**/////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_CONTACT_SPACE						--RECRUITER--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/



-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--
--Contact OF RECRUITER with ADMIN, ZOOKEEPER and Visitors
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--


--DROP TABLE ZOODLE_CONTACT_SPACE;


CREATE TABLE ZOODLE_CONTACT_SPACE				--RECRUiTER--
(
	CONTACT_NO			varchar(20)		check (len(CONTACT_NO)<=20)			PRIMARY KEY,
	SENDER_NAME			VARCHAR(60)		NOT NULL,
    RECEiVER_NAME		VARCHAR(60)		NOT NULL,
	RECEiVER_TYPE		VARCHAR(25)		NOT NULL,
	MESSAGE_BOX			NVARCHAR(200)	NOT NULL
);

--INSERT INTO ZOODLE_CONTACT_SPACE VALUES('21-223-1', 'UNILEVER', 'ADMIN', '2021-04-21', '18:30');

SELECT * FROM ZOODLE_CONTACT_SPACE;



/*...................END OF RECRUITER TABLES........................................*/


















/*
///////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////--ZOODLE_SALES_RECOCRD						--ZOOKEEPER--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/



/*RECORDS FOR SALES TO VISITORS*/

--DROP TABLE ZOODLE_SALES_RECORD;


CREATE TABLE ZOODLE_SALES_RECORD		--ZOOKEEPER--RECRUiTER
(
	SELLER_ID			VARCHAR(50)		PRIMARY KEY,
	SELLER_NAME			VARCHAR(60)		NOT NULL,
	TOTAL_SOLD_ITEMS	INT				NOT NULL,
    TOTAL_EXPENSES		INT				NOT NULL	
);


SELECT * FROM ZOODLE_SALES_RECORD;


--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


/*PURCHASE_ITEMS_FROM_INVENTORIES*/

--DROP TABLE ZOODLE_PURCHASES;


CREATE TABLE ZOODLE_PURCHASES			--ZOOKEEPER--
(
	PURCHASER_ID	 VARCHAR(60)		NOT NULL,
	PURCHASER_NAME	 VARCHAR(60)		NOT NULL,
	PRODUCT_NAME	 VARCHAR(60)		NOT NULL,
    QUANTITY		 INT				NOT NULL	
);


SELECT * FROM ZOODLE_PURCHASES;





/*
///////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////--ZOODEL_TICKET_ARENA						--VISITOR--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/





/*PURCHASE_TICKETS_FROM_RECRUITER*/

--DROP TABLE ZOODLE_TICKET_ARENA;


CREATE TABLE ZOODLE_TICKET_ARENA			--VISITORS--
(
	USERID				INT				PRIMARY KEY,
	VISITOR_NAME		VARCHAR(60)		NOT NULL,
	VISITOR_AGE			INT				NOT NULL,
    EMAIL				VARCHAR(60)		NOT NULL,	
	SCHEDULE_TO_VISIT	TIME			NOT NULL,
	DATE_OF_VISIT		DATE			NOT NULL
);
 
--INSERT INTO ZOODLE_TICKET_ARENA VALUES	(1, 'xyz', 26, 'xyz@em.comm', '13:30', '4-28-2021');

SELECT * FROM ZOODLE_TICKET_ARENA;






/*
///////////////////////////////////////////////////////////////////////////////////////////////////
////////////////--ZOODLE_ANIMAL_FEEDING						--ZOOKEEPER AND VISITOR--///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
*/




--DROP TABLE ZOODLE_ANIMAL_FEEDING;

--ANIMAL FEEDING

CREATE TABLE ZOODLE_ANIMAL_FEEDING		--visitor--
(
	ANIMAL_ID		INT				PRIMARY KEY,
	ANIMAL_NAME		VARCHAR(60)		NOT NULL,
	FOOD_ID			INT				NOT NULL,
	FOOD_ITEMS		VARCHAR(60)		NOT NULL,
	FOOD_QUANTITY	VARCHAR(60)		NOT NULL
);

SELECT * FROM ZOODLE_ANIMAL_FEEDING;


--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--
--END;
--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--
