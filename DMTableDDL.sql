--CREATE DATABASE AmazonDW;
USE AmazonDW;
-- Prouct Category dimension Table
CREATE TABLE DimProductCategory (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    IsActive Bit,
    LastSyncDate DateTime DEFAULT GETDATE(),
	LastUpdatedDate Datetime DEFAULT GETDATE()
    PRIMARY KEY (ID)
);


-- Prouct Brand dimension Table
CREATE TABLE DimProductBrand (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    IsActive Bit,
    LastSyncDate DateTime DEFAULT GETDATE(),
	LastUpdatedDate Datetime DEFAULT GETDATE()
    PRIMARY KEY (ID)
);

-- Prouct rating dimension Table
CREATE TABLE DimProductRating (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    IsActive Bit,
    LastSyncDate DateTime DEFAULT GETDATE(),
	LastUpdatedDate Datetime DEFAULT GETDATE()
    PRIMARY KEY (ID)
);

-- Prouct seller type dimension Table
CREATE TABLE DimProductSellerType (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    IsActive Bit,
    LastSyncDate DateTime DEFAULT GETDATE(),
	LastUpdatedDate Datetime DEFAULT GETDATE()
    PRIMARY KEY (ID)
);

-- Prouct date dimension Table
CREATE TABLE DimDate (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    IsActive Bit,
    LastSyncDate DateTime DEFAULT GETDATE(),
	LastUpdatedDate Datetime DEFAULT GETDATE()
    PRIMARY KEY (ID)
);