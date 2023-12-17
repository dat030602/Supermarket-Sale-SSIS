USE MASTER
GO

IF DB_ID('supermarketsale_source') IS NOT NULL
	DROP DATABASE supermarketsale_source;
GO

CREATE DATABASE supermarketsale_source
GO

USE supermarketsale_source
GO

CREATE TABLE sales_source
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
)
GO

CREATE TABLE city_source
(
	Branch char(1),
	City varchar(10),
)
GO

CREATE TABLE productline_source
(
	ProductLineID varchar(5),
	ProductLine varchar(30),
)

GO

CREATE TABLE product_source
(
	ProductID varchar(20),
	UnitPrice float,
	ProductLine varchar(5),
)

