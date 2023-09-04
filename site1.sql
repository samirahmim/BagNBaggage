clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;
DROP TABLE BAG CASCADE CONSTRAINTS;
DROP TABLE CATEGORY CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE BILLS CASCADE CONSTRAINTS;
CREATE TABLE BAG(
	BId int,
	bName varchar2(100),
	price int,
	cat int,
	availibility int,
	PRIMARY KEY(BId));
	
CREATE TABLE CATEGORY(
	CatId int,
	CatName varchar2(100),
	PRIMARY KEY(CatId));
	
CREATE TABLE CUSTOMER(
	CustId int,
	CustName varchar2(100),
	Cust_contact varchar(11),
	PRIMARY KEY(CustId));

CREATE TABLE BILLS(
	BillId int,
	date_recorded date,
	amount int,
	BId int,
	CustId int,
	PRIMARY KEY(BillId));
	
INSERT INTO CATEGORY(CatId,CatName) VALUES(1,'Shoulder Bag');
INSERT INTO CATEGORY(CatId,CatName) VALUES(2,'Clutches');
INSERT INTO CATEGORY(CatId,CatName) VALUES(3,'Backpack');
INSERT INTO CATEGORY(CatId,CatName) VALUES(4,'Tote Bag');

INSERT INTO BAG(BId,bName,price,cat,availibility) VALUES(1,'Public Desire ruched satin bridal shoulder bag in pale blue satin',
																	3500, 1,10);
INSERT INTO BAG(BId,bName,price,cat,availibility) VALUES(2,'Calvin Klein Women''s Gabrianna Novelty Bucket Shoulder Bag',
																	5500, 1,8);
INSERT INTO BAG(BId,bName,price,cat,availibility) VALUES(3,'Lacoste L.12.12 Tote Bag',
																	6000, 4,5);	

INSERT INTO CUSTOMER(CustId,CustName,Cust_contact) VALUES(1,'Samirah','01521583444');
INSERT INTO CUSTOMER(CustId,CustName,Cust_contact) VALUES(2,'Nusrat','01621583444');
INSERT INTO CUSTOMER(CustId,CustName,Cust_contact) VALUES(3,'Farzana','01721583444');
INSERT INTO CUSTOMER(CustId,CustName,Cust_contact) VALUES(4,'Minara','01821583444');
INSERT INTO CUSTOMER(CustId,CustName,Cust_contact) VALUES(5,'Mehvish','01921583444');

INSERT INTO BILLS(BillId,date_recorded,amount,BId,CustId) VALUES(1,'05-Sep-22',3500,1,1);
INSERT INTO BILLS(BillId,date_recorded,amount,BId,CustId) VALUES(2,'05-Oct-22',3500,1,2);
INSERT INTO BILLS(BillId,date_recorded,amount,BId,CustId) VALUES(3,'10-Oct-22',5500,2,3);
INSERT INTO BILLS(BillId,date_recorded,amount,BId,CustId) VALUES(4,'15-Oct-22',11000,2,4);
INSERT INTO BILLS(BillId,date_recorded,amount,BId,CustId) VALUES(5,'20-Oct-22',6000,3,5);	
																
commit;
						