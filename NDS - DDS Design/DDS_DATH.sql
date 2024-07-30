CREATE DATABASE DDS_DATH1
GO

USE DDS_DATH1

CREATE TABLE DimCity
(
	City_id INT IDENTITY(1,1) PRIMARY KEY,
	Branch CHAR(1),
	City VARCHAR(10),
	StartDate DATETIME,
	EndDate DATETIME,
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE DimProduct
(
	Product_id INT IDENTITY(1,1) PRIMARY KEY,
	Product_id_nk VARCHAR(10),
	ProductLine_id_nk VARCHAR(10),
	ProductLine VARCHAR(255),
	StartDate DATETIME,
	EndDate DATETIME,
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE DimCustomerGroup
(
	CustomerGroup_id INT IDENTITY(1,1) PRIMARY KEY,
	Customer_type VARCHAR(255),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE DimGender
(
	Gender_id INT IDENTITY(1,1) PRIMARY KEY,
	Gender VARCHAR(10),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE DimDate
(
	Date_id INT IDENTITY(1,1) PRIMARY KEY,
	[Day] INT,
	[Month] INT,
	[Year] INT,
	[Time] TIME
)

CREATE TABLE DimPayment
(
	Payment_id INT IDENTITY(1,1) PRIMARY KEY,
	Payment VARCHAR(255),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE SALES_FACT
(
	City_id INT,
	Product_id INT,
	CustomerGroup_id INT,
	Gender_id INT,
	Date_id INT,
	Payment_id INT,
	Invoice_id VARCHAR(20),
	Quantity INT,
	Unit_price DECIMAL,
	Tax_5 DECIMAL,
	Cogs DECIMAL,
	Gross_margin_percentage DECIMAL,
	Gross_income DECIMAL,
	Rating DECIMAL,
	Total DECIMAL,
	Create_timestamp DATETIME,
	Update_timestamp DATETIME

	PRIMARY KEY(City_id, Product_id, CustomerGroup_id, Date_id, Gender_id)
)


ALTER TABLE SALES_FACT
ADD CONSTRAINT fk_FD FOREIGN KEY (Date_id)
REFERENCES DimDate (Date_id);

ALTER TABLE SALES_FACT
ADD CONSTRAINT fk_FCt FOREIGN KEY (City_id)
REFERENCES DimCity (City_id);

ALTER TABLE SALES_FACT
ADD CONSTRAINT fk_FP FOREIGN KEY (Product_id)
REFERENCES DimProduct (Product_id);

ALTER TABLE SALES_FACT
ADD CONSTRAINT fk_FCs FOREIGN KEY (CustomerGroup_id)
REFERENCES DimCustomerGroup (CustomerGroup_id);

ALTER TABLE SALES_FACT
ADD CONSTRAINT fk_FG FOREIGN KEY (Gender_id)
REFERENCES DimGender (Gender_id);

ALTER TABLE SALES_FACT
ADD CONSTRAINT fk_FPA FOREIGN KEY (Payment_id)
REFERENCES DimPayment (Payment_id);


ALTER TABLE DimPayment
ALTER COLUMN Payment VARCHAR(255)