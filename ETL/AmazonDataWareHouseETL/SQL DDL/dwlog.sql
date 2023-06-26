DROP TABLE IF EXISTS DWLog
CREATE TABLE DWLog (
    ID int NOT NULL IDENTITY(1,1),
    PackageName varchar(255) NOT NULL,
	CreatedName varchar(255) NOT NULL,
	StartDateTime Datetime,
	EndDateTime Datetime,
	isactive int not null,
    PRIMARY KEY (ID)
);

INSERT INTO DWLog(
    PackageName,
	CreatedName,
	StartDateTime ,
	EndDateTime,
	isactive)
VALUES(?,?,?,null,1)

UPDATE DWLog
set EndDateTime = ?
WHERE PackageName = ?


SELECT * FROM DWLog