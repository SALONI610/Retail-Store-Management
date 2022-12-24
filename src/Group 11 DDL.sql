/*
Project - DDL Project BUAN 6320
*/


/* DROP statements to clean up objects from previous run */
-- Triggers
DROP TRIGGER TRG_Stores;
DROP TRIGGER TRG_Invoices;
DROP TRIGGER TRG_Customers;

-- Sequences
DROP SEQUENCE SEQ_Invoices_Invoice_ID;
DROP SEQUENCE SEQ_Stores_Store_ID;
DROP SEQUENCE SEQ_Customers_Cust_ID;

-- Indices
DROP INDEX IDX_Stores_Name;

DROP INDEX IDX_Customers_Cust_Email;
DROP INDEX IDX_Customers_Cust_Phone_Num;

DROP INDEX IDX_Invoices_Cust_ID_FK;
DROP INDEX IDX_Invoices_Store_ID_FK;
DROP INDEX IDX_Invoices_Emp_ID_FK;
DROP INDEX IDX_Invoices_Prod_ID_FK;

-- Tables
DROP TABLE Invoices;
DROP TABLE Customers;
DROP TABLE Products;
DROP TABLE Employees;
DROP TABLE Stores;


/* Create tables based on entities */
CREATE TABLE Stores
(
Store_ID int,
Store_Name varchar(255) NOT NULL,
Store_Type varchar(25) NOT NULL,
Emp_ID int,
Owners varchar(255) NOT NULL,
Zip int,
CONSTRAINT PK_Stores PRIMARY KEY (Store_ID)
);

CREATE TABLE Products
(
Prod_ID int,
Prod_Category_ID int,
Store_ID int,
Prod_Name varchar(225) NOT NULL,
Prod_Price varchar(25) NOT NULL,
Prod_Exp_Date varchar(25) NOT NULL,
CONSTRAINT PK_Products PRIMARY KEY (Prod_ID),
CONSTRAINT FK_Products FOREIGN KEY (Store_ID) REFERENCES Stores (Store_ID)
);


CREATE TABLE Employees
(
Emp_ID int,
Store_ID int,
Emp_FName varchar(225) NOT NULL,
Emp_LName varchar(225) NOT NULL,
Emp_DOB varchar(25) NOT NULL,
Emp_Type varchar(25) NOT NULL,
Emp_Salary int,
Zip int,
CONSTRAINT PK_Employees PRIMARY KEY (Emp_ID),
CONSTRAINT FK_Employees FOREIGN KEY (Store_ID) REFERENCES Stores (Store_ID)
);

CREATE TABLE Customers
(
Cust_ID int,
Cust_FName varchar(225) NOT NULL,
Cust_LName varchar(225) NOT NULL,
Cust_Phone_Num varchar(25) NOT NULL,
Cust_Email varchar(25) NOT NULL,
Zip int,
CONSTRAINT PK_Customers PRIMARY KEY (Cust_ID)
);

CREATE TABLE invoices
(
Invoice_ID int,
Cust_ID int,
Store_ID int,
Emp_ID int,
Taxable varchar(5) NOT NULL,
Prod_ID int,
Invoice_Amount varchar(225) NOT NULL,
OQuantity int,
Order_Date varchar(225) NOT NULL,
CONSTRAINT PK_Invoices PRIMARY KEY (Invoice_ID),
CONSTRAINT FK_Invoices FOREIGN KEY (Store_ID) REFERENCES Stores (Store_ID),
CONSTRAINT FK_Invoices_Cust_ID FOREIGN KEY (Cust_ID) REFERENCES Customers (Cust_ID),
CONSTRAINT FK_Invoices_Emp_ID FOREIGN KEY (Emp_ID) REFERENCES Employees (Emp_ID),
CONSTRAINT FK_Invoices_Prod_ID FOREIGN KEY (Prod_ID) REFERENCES Products (Prod_ID)
);

/* Create indices for natural keys, foreign keys, and frequently-queried columns */
-- Stores
-- Natural Keys
CREATE INDEX IDX_Stores_Name ON Stores (Store_Name);

-- Customers
-- Natural Keys
CREATE INDEX IDX_Customers_Cust_Email ON Customers (Cust_Email);
CREATE INDEX IDX_Customers_Cust_Phone_Num ON Customers (Cust_Phone_Num);

-- Invoices
-- Foreign Keys
CREATE INDEX IDX_Invoices_Cust_ID_FK ON Invoices (Cust_ID);
CREATE INDEX IDX_Invoices_Store_ID_FK ON Invoices (Store_ID);
CREATE INDEX IDX_Invoices_Emp_ID_FK ON Invoices (Emp_ID);
CREATE INDEX IDX_Invoices_Prod_ID_FK ON Invoices (Prod_ID);

/* Alter Tables by adding Audit Columns */
ALTER TABLE Stores 
ADD (
created_by VARCHAR2(30),
date_created DATE,
modified_by VARCHAR2(30),
date_modified DATE
);

ALTER TABLE Products ADD (
created_by VARCHAR2(30),
date_created DATE,
modified_by VARCHAR2(30),
date_modified DATE
);

ALTER TABLE Employees ADD (
created_by VARCHAR2(30),
date_created DATE,
modified_by VARCHAR2(30),
date_modified DATE
);

ALTER TABLE Customers ADD (
created_by VARCHAR2(30),
date_created DATE,
modified_by VARCHAR2(30),
date_modified DATE
);

ALTER TABLE Invoices ADD (
created_by VARCHAR2(30),
date_created DATE,
modified_by VARCHAR2(30),
date_modified DATE
);

/* Create Sequences */
CREATE SEQUENCE SEQ_Invoices_Invoice_id
INCREMENT BY 1
START WITH 81000000
NOMAXVALUE
MINVALUE 81000000
NOCACHE;

CREATE SEQUENCE SEQ_Stores_Store_ID
INCREMENT BY 1
START WITH 1
NOMAXVALUE
MINVALUE 1
NOCACHE;

CREATE SEQUENCE SEQ_Customers_Cust_ID 
INCREMENT BY 1
START WITH 100
NOMAXVALUE
MINVALUE 100
NOCACHE;

/* Create Triggers */
-- Business purpose: The TRG_Stores trigger automatically assigns a sequential user ID to a newly-inserted row in the Stores table, as well as setting the join date to the current system date and assigning appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.
CREATE OR REPLACE TRIGGER TRG_Stores
    BEFORE INSERT OR UPDATE ON Stores
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.Store_ID IS NULL THEN
                :NEW.Store_ID := SEQ_Stores_Store_ID.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        End IF;
END;
/

-- Business purpose: The TRG_Invoices trigger automatically assigns as sequential invoice_ID to a newly-inserted row in the invocies table, as well as setting the upload date to the current system date, as well as setting the join date to the current system date and assigning appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.
CREATE OR REPLACE TRIGGER TRG_Invoices
    BEFORE INSERT OR UPDATE ON Invoices
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.Invoice_ID IS NULL THEN
                :NEW.Invoice_ID := SEQ_Invoices_Invoice_ID.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/

-- Business purpose: The TRG_Customers trigger sets the modified_by and date_modified fields to appropriate values in a newly inserted or updated record; if the record is being inserted, then the created_by and date_created fields are set to appropriate values too. 
CREATE OR REPLACE TRIGGER TRG_Customers
    BEFORE INSERT OR UPDATE ON Customers
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.Cust_ID IS NULL THEN
                :NEW.Cust_ID := SEQ_Customers_Cust_ID.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/

-- Business purpose: The TRG_Products trigger sets the modified_by and date_modified fields to appropriate values in a newly inserted or updated record; if the record is being inserted, then the created_by and date_created fields are set to appropriate values too.
CREATE OR REPLACE TRIGGER TRG_Products
    BEFORE INSERT OR UPDATE ON Products
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/

-- Business purpose: The TRG_Employees trigger sets the modified_by and date_modified fields to appropriate values in a newly inserted or updated record; if the record is being inserted, then the created_by and date_created fields are set to appropriate values too.
CREATE OR REPLACE TRIGGER TRG_Employees
    BEFORE INSERT OR UPDATE ON Employees
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/

-- Check the DBMS data dictionary to make sure that all objects have been created successfully
SELECT TABLE_NAME FROM USER_TABLES;

SELECT OBJECT_NAME, STATUS, CREATED, LAST_DDL_TIME FROM USER_OBJECTS;