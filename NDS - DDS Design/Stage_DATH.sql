CREATE DATABASE Stage_DATH
GO

USE Stage_DATH

CREATE TABLE Sales
(
	Invoice_id VARCHAR(20),
	Branch CHAR(1),
	Customer_type VARCHAR(255),
	Gender VARCHAR(10),
	Product_id VARCHAR(10),
	Quantity INT,
	Payment VARCHAR(255),
	[Date] DATE,
	[Time] TIME,
	Tax_5 DECIMAL,
	Cogs DECIMAL,
	Gross_margin_percentage DECIMAL,
	Gross_income DECIMAL,
	Rating DECIMAL,
	Total DECIMAL,
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)


CREATE TABLE Product
(
	Product_id VARCHAR(10),
	Unit_price DECIMAL,
	ProductLine VARCHAR(10),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE ProductLine
(
	ProductLine_id VARCHAR(10),
	ProductLine VARCHAR(255),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)

CREATE TABLE City
(
	Branch CHAR(1),
	City VARCHAR(10),
	Create_timestamp DATETIME,
	Update_timestamp DATETIME
)