DROP TABLE IF EXISTS DimProductCategory
CREATE TABLE DimProductCategory (
    ID int NOT NULL IDENTITY(1,1),
    Name varchar(max) NOT NULL,
    IsActive Bit,
    LastSyncDate DateTime DEFAULT GETDATE(),
	LastUpdatedDate Datetime DEFAULT GETDATE()
    PRIMARY KEY (ID)
);


--  Delete A exsting Table
DELETE FROM DimProductCategory
Where  name in (SELECT  Category FROM ProductDetails)


-- Insert a record to category dim table
INSERT INTO DimProductCategory(name,IsActive)
SELECT DISTINCT  Category  as Name, 1 FROM ProductDetails
WHERE Category <> ''


SELECT * FROM DimProductCategory

