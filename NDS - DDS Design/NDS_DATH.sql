CREATE DATABASE NDS_DATH
GO

USE NDS_DATH

CREATE TABLE Gender
(
	Gender_id INT IDENTITY(1,1) PRIMARY KEY,
	Gender VARCHAR(10),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE Customer_Group
(
	Customer_id INT IDENTITY(1,1) PRIMARY KEY,
	Customer_type VARCHAR(255),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE Branch
(
	Branch_id INT IDENTITY(1,1) PRIMARY KEY,
	Branch CHAR(1),
	City VARCHAR(10), 
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE [Order]
(
	Order_id INT IDENTITY(1,1) PRIMARY KEY,
	Invoice_id VARCHAR(20),
	Branch_id INT,
	Customer_id INT,
	Gender_id INT,
	Product_id INT,
	Tax_5 DECIMAL,
	Cogs DECIMAL,
	Gross_margin_percentage DECIMAL,
	Gross_income DECIMAL,
	Rating DECIMAL,
	Payment VARCHAR(255),
	Quantity INT,
	[Date] DATE,
	[Time] TIME,
	Total DECIMAL,
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)


CREATE TABLE ProductLine
(
	ProductLine_id INT IDENTITY(1,1) PRIMARY KEY,
	ProductLine_id_nk VARCHAR(10),
	ProductLine VARCHAR(255),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE Product
(
	Product_id INT IDENTITY(1,1) PRIMARY KEY,
	product_id_nk VARCHAR(10),
	ProductLine_id INT,
	Unit_price DECIMAL,
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

ALTER TABLE [Order] 
ADD CONSTRAINT fk_OP FOREIGN KEY (Product_id)
REFERENCES Product (Product_id);

ALTER TABLE [Order]
ADD CONSTRAINT fk_OG FOREIGN KEY (Gender_id)
REFERENCES Gender (Gender_id);

ALTER TABLE [Order]
ADD CONSTRAINT fk_OCs FOREIGN KEY (Customer_id)
REFERENCES Customer_Group (Customer_id);

ALTER TABLE [Order] 
ADD CONSTRAINT fk_OCt FOREIGN KEY (Branch_id)
REFERENCES Branch (Branch_id);

ALTER TABLE Product
ADD CONSTRAINT fk_PP FOREIGN KEY (ProductLine_id)
REFERENCES ProductLine (ProductLine_id);

