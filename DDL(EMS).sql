
/*
                         Project Name : Super shop Employee Management System (EMS)
						 Trainee Name : Aysha Mahmud
						 Trainee ID   : 1280695
						 Batch   ID   : CS/PNTL-M/58/01
-----------------------------------------------------------------------------------------------------------------
Table of Contents: DDL
SECTION 01: CREATE DATABASE (EMS)
SECTION 02: CREATE TALBES WITH COLUMN DEFINITION (Normalization)
SECTION 03: ALTER, DROP AND MODIFY TABLES & COLUMNS
SECTION 04: CREATE CLUSTERED AND NONCLUSTERED INDEX
SECTION 05: CREATE A VIEW 
SECTION 06: CREATE STORED PROCEDURE & ALTER STORED PROCEDURE
SECTION 07: CREATE FUNCTION(SCALER VALUED FUNCTION & TABLE VALUED FUNCTION)
SECTION 08: CREATE TRIGGER (FOR/AFTER,INSTEAD OF TRIGGER)
*/



/*
==============================  SECTION 01  ==============================
	   CHECK DATABASE EXISTANCE & CREATE DATABASE WITH ATTRIBUTES
==========================================================================
*/
 USE MASTER
 GO

 IF DB_ID('EMS') IS NOT NULL
 DROP DATABASE EMS
 GO

 CREATE DATABASE EMS
ON
(
	name = 'EMS_data',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EMS_data.mdf',
	size = 5MB,
	maxsize = 50MB,
	filegrowth = 10%
)
LOG ON
(
	name = 'EMS_log',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EMS_log.ldf',
	size = 8MB,
	maxsize = 50MB,
	filegrowth = 5MB
)
GO

 USE EMS
 GO

 /*
==============================  SECTION 02  ==============================
		          CREATE TABLES WITH COLUMN DEFINITION 
==========================================================================
*/

 CREATE TABLE DESIGNATION
 (
   DG_ID INT IDENTITY PRIMARY KEY,
   DESIGNATION NVARCHAR(50) NOT NULL
 )
 GO

 CREATE TABLE GENDER
 (
	GENDER_ID INT IDENTITY PRIMARY KEY,
	GENDER VARCHAR (10) NOT NULL
 )
 GO

 CREATE TABLE RESIDENCE
 (
	 RS_ID INT IDENTITY PRIMARY KEY,
	 R_PRESENT VARCHAR(150) NOT NULL,
	 R_PERMANENT VARCHAR(150) NULL
 )
 GO

 CREATE TABLE employeeInfo
 (
	 EMP_ID INT IDENTITY PRIMARY KEY,
	 DG_ID INT REFERENCES DESIGNATION(DG_ID),
	 EMP_NAME VARCHAR (100) NOT NULL ,
	 NAME_FATHER VARCHAR (100) NOT NULL,
	 NAME_MOTHER VARCHAR(100) NOT NULL,
	 DateOfBirth DATE NOT NULL,
	 CONTACT_NO INT NOT NULL,
	 bloodGroup CHAR (10) NULL,
	 RS_ID INT REFERENCES RESIDENCE(RS_ID)
)
GO
CREATE TABLE salaryInfo
(
	SALARY_ID INT IDENTITY PRIMARY KEY,
	EMP_ID INT REFERENCES employeeInfo(EMP_ID),
	totalWorkday INT NOT NULL,
	PRESENT INT NOT NULL,
	NOT_PRESENT INT NOT NULL,
	wagePerday MONEY NOT NULL,
	SalaryTotal MONEY NOT NULL
)
GO

CREATE TABLE STAFF
(
	STAFF_ID INT PRIMARY KEY,
	HIERARCHY CHAR (100) NOT NULL,
	EMP_ID INT REFERENCES employeeInfo(EMP_ID),
	SALARY_ID INT REFERENCES salaryInfo(SALARY_ID),
	GENDER_ID INT REFERENCES GENDER(GENDER_ID)
)
GO
--============== CREATE A SCHEMA ============--

CREATE SCHEMA emp_mgt
GO
--============== USE SCHEMA IN A TABLE ============--

CREATE TABLE emp_mgt.Stall
(
	stall_Id INT,
	stall_Name NVARCHAR(50) NOT NULL,
	Stall_In_charge varchar(100) NOT NULL
)
GO

/*
==============================  SECTION 03  ==============================
		          ALTER, DROP AND MODIFY TABLES & COLUMNS
==========================================================================
*/


--========== ALTER TABLE SCHEMA AND TRANSFER TO [DBO] ============--

ALTER SCHEMA dbo TRANSFER emp_mgt.Stall
GO
 --============== Update column definition ============--

ALTER TABLE Stall
ALTER COLUMN stall_Name VARCHAR(100)
GO
--============== ADD column with DEFAULT CONSTRAINT ============--
ALTER TABLE Stall
ADD workHour INT DEFAULT 12
GO
--============== DROP COLUMN ============--

ALTER TABLE Stall
DROP COLUMN workHour
GO
--============== DROP TABLE ============--

IF OBJECT_ID('Stall') IS NOT NULL
DROP TABLE Stall
GO
--============== DROP SCHEMA ============--

DROP SCHEMA emp_mgt
GO


/*
==============================  SECTION 04  ==============================
		          CREATE CLUSTERED AND NONCLUSTERED INDEX
==========================================================================
*/

---Sample Table--
CREATE TABLE Emp_Performance
(
Emp_ID int,
Emp_Name varchar (100) not null,
Performance varchar (50) not null
)
Go 
-- Clustered Index
CREATE CLUSTERED INDEX IX_Emp_Id
ON Emp_Performance
(Emp_Id)
GO

-- Nonclustered Index
CREATE UNIQUE NONCLUSTERED INDEX IX_Emp_Name
ON Emp_Performance
(Emp_Name)
GO
/*
==============================  SECTION 05  ==============================
							  CREATE A VIEW
==========================================================================
*/

CREATE VIEW V_salaryInfo
AS
SELECT EMP_ID,PRESENT,SalaryTotal FROM salaryInfo
Go

-- VIEW WITH ENCRYPTION

CREATE VIEW V_employeeInfo
WITH ENCRYPTION
AS
SELECT Emp_ID,DateOfBirth,CONTACT_NO FROM employeeInfo
GO
/*
==============================  SECTION 06  ==============================
							 STORED PROCEDURE
==========================================================================
*/

--============== STORED PROCEDURE for Inserting Data ============---
(----Based on Sample Table Emp_Performance--- )

CREATE PROCEDURE spInsertEmp_Performance @Emp_ID int,
                                         @Emp_Name varchar (100),
										 @Performance varchar (50)
AS
BEGIN
	INSERT INTO Emp_Performance(Emp_ID,Emp_Name,Performance)   
	VALUES (@Emp_ID,@Emp_Name,@Performance)
END
GO

--============== STORED PROCEDURE for UPDATE data ============--

CREATE PROCEDURE spUpdateEmp_Performance @EMP_ID INT,
                                         @Performance varchar (50)
AS
BEGIN
	UPDATE Emp_Performance
	SET
	Performance= @Performance
	WHERE EMP_ID = @EMP_ID
END
GO
--============== STORED PROCEDURE for Deleting data ============--

CREATE PROCEDURE sp_Delete_Emp_Performance @EMP_NAME VARCHAR(100)
AS
BEGIN
	DELETE FROM Emp_Performance
	WHERE EMP_NAME =@EMP_NAME
END
GO

/*
==============================  SECTION 07  ==============================
							CREATING FUNCTION
==========================================================================
*/
-----Table For Function---
CREATE TABLE homeSales
(
	[date] DATETIME DEFAULT GETDATE(),
	itemSold VARCHAR(30) NOT NULL,
	unitPrice MONEY NOT NULL,
	quantity INT NULL,
	discountPercent FLOAT DEFAULT .05
)
GO
--Scaler Functions 
CREATE FUNCTION fnCalcDiscount(@unitPrice MONEY,
							   @quantitySold INT,
							   @discountPercent FLOAT)
RETURNS MONEY
AS
BEGIN
		DECLARE @discountEarned MONEY
		SET @discountEarned=@unitPrice*@quantitySold*@discountPercent
		RETURN @discountEarned
END
GO

---Table Valued Functions 
CREATE FUNCTION fnSalesSummaryOfMonth(@year INT,@month INT)
RETURNS TABLE
AS
RETURN
(
	SELECT 
	SUM(unitPrice*quantity) 'Total Sales',
	SUM(unitPrice*quantity*discountPercent) 'Total Discount',
	SUM(unitPrice*quantity*(1-discountPercent)) 'Net Amount'
	FROM homeSales
	WHERE YEAR([date])=@year AND MONTH([date])=@month
)
GO
--Multi-statement table-valued function

CREATE FUNCTION fnSalesDetails(@year INT,@month INT)
RETURNS @salesDetails TABLE
(
	itemSold VARCHAR(30),
	totalSales MONEY,
	discount MONEY,
	netAmount MONEY
)
AS
BEGIN
	INSERT INTO @salesDetails
	SELECT itemSold, 
	SUM(unitPrice*quantity),
	SUM(unitPrice*quantity*discountPercent),
	SUM(unitPrice*quantity*(1-discountPercent))
	FROM homeSales
	WHERE YEAR([date])=@year AND MONTH([date])=@month
	GROUP BY itemSold
	RETURN
END
GO

/*
==============================  SECTION 08  ==============================
							CREATING TRIGGERS
==========================================================================
*/
----------FOR/AFTER TRIGGER------

CREATE TRIGGER trGENDER
ON GENDER
AFTER UPDATE,DELETE
AS
BEGIN
	PRINT 'Not possible to update or delete data!!!'
	ROLLBACK TRANSACTION
END
GO
----------INSTEAD OF----------

CREATE TRIGGER InsteadOftrigger
ON Emp_Performance
INSTEAD OF INSERT
AS 
BEGIN
    INSERT INTO Emp_Performance(Emp_ID,Emp_Name,Performance)
    SELECT Emp_ID,Emp_Name,Performance
    FROM inserted
END
GO

