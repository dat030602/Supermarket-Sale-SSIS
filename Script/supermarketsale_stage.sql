USE MASTER
GO

IF DB_ID('supermarketsale_stage') IS NOT NULL
	DROP DATABASE supermarketsale_stage;
GO

CREATE DATABASE supermarketsale_stage
GO

USE supermarketsale_stage
GO

CREATE TABLE sales_stage
(
	InvoiceID varchar(20),
	Branch char(1),
	CustomerType varchar(10),
	Gender varchar(10),
	ProductID varchar(10),
	Quantity int,
	Tax5Percentage float,
	Total float,
	Date date,
	Time time, 
	Payment varchar(20),
	Cogs float,
	GrossMarginPercentage float,
	GrossIncome float,
	Rating float,
	CreatedDate datetime default GETDATE(),
	UpdatedDate datetime default GETDATE()
)
GO

CREATE TABLE city_stage
(
	Branch char(1),
	City varchar(10),
	CreatedDate datetime default GETDATE(),
	UpdatedDate datetime
)
GO

CREATE TABLE productline_stage
(
	ProductLineID varchar(5),
	ProductLine varchar(30),
	CreatedDate datetime default GETDATE(),
	UpdatedDate datetime default GETDATE()
)

GO

CREATE TABLE product_stage
(
	ProductID varchar(20),
	UnitPrice float,
	ProductLine varchar(5),
	CreatedDate datetime default GETDATE(),
	UpdatedDate datetime default GETDATE()
)

