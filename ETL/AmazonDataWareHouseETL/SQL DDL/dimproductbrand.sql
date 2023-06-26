
DROP TABLE IF EXISTS DimProductBrand
CREATE TABLE DimProductBrand (
    ID int NOT NULL IDENTITY(1,1),
    Name varchar(max) NOT NULL,
    IsActive Bit,
    LastSyncDate DateTime DEFAULT GETDATE(),
	LastUpdatedDate Datetime DEFAULT GETDATE()
    PRIMARY KEY (ID)
);



--  Delete A exsting Table
DELETE FROM DimProductBrand
Where  name in (SELECT  distinct Brand FROM ProductDetails)

SELECT  distinct Brand FROM ProductDetails
WHERE brand <> ''


-- Insert a record to category dim table
INSERT INTO DimProductBrand(name,IsActive)
SELECT  distinct Brand as name,1 as activeflag FROM ProductDetails
WHERE brand <> ''

SELECT * FROM DimProductBrand