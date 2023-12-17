USE MASTER
GO

IF DB_ID('supermarketsale_nds') IS NOT NULL
	DROP DATABASE supermarketsale_nds;
GO

CREATE DATABASE supermarketsale_nds
GO

USE supermarketsale_nds
GO

CREATE TABLE customer_type_nds(
	CustomerType_SK int identity (1,1) primary key,
	CustomerType_NK int,
	CustomerType varchar(10),
	CreatedDate datetime default GETDATE(),
	Active bit default 1
)
GO

CREATE TABLE gender_nds(
	Gender_SK int identity (1,1) primary key,
	Gender_NK int,
	Gender char(1), --F for Femail and M for Male
	CreatedDate datetime default GETDATE(),
	Active bit default 1
)
GO

CREATE TABLE payment_type_nds(
	PaymentType_SK int identity (1,1) primary key,
	PaymentType_NK int,
	PaymentType varchar(20),
	CreatedDate datetime default GETDATE(),
	Active bit default 1
)
GO

CREATE TABLE city_nds(
	Branch_SK int identity (1,1) primary key,
	Branch_NK char(1),
	City varchar(10),
	CreatedDate datetime default GETDATE(),
	Active bit default 1
)
GO

CREATE TABLE productline_nds(
	ProductLineID_SK int identity (1,1) primary key,
	ProductLineID_NK varchar(5),
	ProductLine varchar(30),
	CreatedDate datetime default GETDATE(),
	Active bit default 1
)

GO

CREATE TABLE product_nds
(
	ProductID_SK int identity (1,1) primary key,
	ProductID_NK varchar(20),
	UnitPrice float,
	ProductLine int foreign key references productline_nds(ProductLineID_SK),
	CreatedDate datetime default GETDATE(),
	Active bit default 1
)
GO

CREATE TABLE sales_nds
(
	InvoiceID_SK int identity (1,1) primary key,
	InvoiceID_NK varchar(20),
	Branch int foreign key references city_nds(Branch_SK),
	CustomerType int foreign key references customer_type_nds(CustomerType_SK),
	Gender int foreign key references gender_nds(Gender_SK),
	ProductID int foreign key references product_nds(ProductID_SK),
	Quantity int,
	Tax5Percentage float,
	Total float,
	Date date,
	Time time, 
	Payment int foreign key references payment_type_nds(PaymentType_SK),
	Cogs float,
	GrossMarginPercentage float,
	GrossIncome float,
	Rating float,
	CreatedDate datetime default GETDATE(),
	UpdatedDate datetime default GETDATE()
)
GO