﻿CREATE DATABASE METADATA_DATH
GO

USE METADATA_DATH

CREATE TABLE Stage
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(30),
	lset DATETIME
)

CREATE TABLE NDS
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(30),
	lset DATETIME
)

CREATE TABLE DDS
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(30),
	lset DATETIME
)


INSERT INTO Stage
VALUES 
('Sales', GETDATE()),
('Product', GETDATE()),
('ProductLine', GETDATE()),
('City', GETDATE())

INSERT INTO NDS
VALUES 
('Gender', GETDATE()),
('Customer_Group', GETDATE()),
('City', GETDATE()),
('Order', GETDATE()),
('ProductLine', GETDATE()),
('Product', GETDATE()),
('Order_Product', GETDATE())


SELECT * FROM Stage;
SELECT * FROM NDS;


