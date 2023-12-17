USE MASTER
GO

IF DB_ID('supermarketsale_metadata') IS NOT NULL
	DROP DATABASE supermarketsale_metadata;
GO

CREATE DATABASE supermarketsale_metadata
GO

USE supermarketsale_metadata
GO

CREATE TABLE Data_Flow(
	ID int IDENTITY(1,1) primary key,
	TableName varchar(50) NULL,
	LSET datetime NULL,
	CET datetime NULL
)
GO

insert into Data_Flow(TableName) values('SALES_SOURCE')
insert into Data_Flow(TableName) values('PRODUCT_SOURCE')
insert into Data_Flow(TableName) values('PRODUCTLINE_SOURCE')
insert into Data_Flow(TableName) values('CITY_SOURCE')

insert into Data_Flow(TableName) values('SALES_DDS')
insert into Data_Flow(TableName) values('PRODUCT_DDS')
insert into Data_Flow(TableName) values('PRODUCTLINE_DDS')
insert into Data_Flow(TableName) values('CITY_DDS')
insert into Data_Flow(TableName) values('PAYMENTTYPE_DDS')
insert into Data_Flow(TableName) values('GENDER_DDS')
insert into Data_Flow(TableName) values('CUSTOMERTYPE_DDS')
insert into Data_Flow(TableName) values('DATE_DDS')