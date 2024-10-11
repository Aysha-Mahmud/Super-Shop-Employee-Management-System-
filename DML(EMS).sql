
/*                   Project Name : Super shop Employee Management System (EMS)
					 Trainee Name : Aysha Mahmud   
					 Trainee ID   : 1280695      
					 Batch ID     : CS/PNTL-M/58/01
----------------------------------------------------------------------------------------------------------
Table of Contents: DML
SECTION 01: INSERT DATA USING INSERT INTO KEYWORD
SECTION 02: INSERT,UPDATE DELETE DATA THROUGH STORED PROCEDURE
SECTION 03: QUERY
SUB-SECTION-1:SELECT STATEMENTS
SUB-SECTION-2: WHERE CLAUSE
SUB-SECTION-3: LIKE OPERATORS
SUB-SECTION-4: OTHER CLAUSES
SECTION 04: JOINING, AGGREGATE FUNCTIONS,SUMMERY QUERIES
SECTION 05:  DATA CONVERSION, BUILT IN FUNCTIONS
--------------------------------------------------------------------------------------------------------
*/

/*
==============================  SECTION 01  ==============================
					INSERT DATA USING INSERT INTO KEYWORD
==========================================================================
*/
USE EMS
GO

INSERT INTO DESIGNATION VALUES 
('Branch Manager'),
('Section Manager'),
('Stall In-Charge'),
('Billing Staff'),
('Stock In-Charge'),
('Helper'),
('Guard'),
('Cleaner')
Go
SELECT * FROM DESIGNATION
GO
INSERT INTO GENDER VALUES
('Male'),
('Female'),
('Others')
Go
SELECT * FROM GENDER
GO

INSERT INTO RESIDENCE VALUES
('Barisal'),
('Chittagong'),
('Dhaka'),
('Khulna'),
('Mymensingh'),
('Rajshahi'),
('Rangpur'),
('Sylhet')
GO
SELECT * FROM RESIDENCE
GO

INSERT INTO employeeInfo VALUES
(1,'Aysha Mahmud','K.M.Hassan','Shahnaz Parvin','1996-10-15','01725603665','B+ve',3),
(2,'Farid Ahmed','Nafiz Ahmed','Runa Mirza','1998-5-15','01725456778','B+ve',1),
(2,'Nirob Reza','Kazi Reza','Minara Rahman','1997-10-15','01725604220','O+ve',3),
(2,'Moinujjaman','Rakib Hassan','Anonna Mahmud','1999-8-10','01724950399','B+ve',4),
(3,'Rukaiya Tasnim','Monir Jaman','Meera Mahmud','2000-3-10','01724950378','B+ve',3),
(3,'Shahiduzzaman','Rajib Molla','Antora Islam','2002-3-6','01724950345','A-ve',3),
(3,'Nirupoma Roy','Sultan Roy','Anindita Roy','1998-9-10','01724950389','B+ve',6),
(3,'Mihir Rony','Shafik Ahmed','Nobita Khatun','1997-8-10','01724950300','O-ve',7),
(3,'Fahim Jahan','Monirujjaman Khan','Jorina Banu','1996-8-28','01724950356','O+ve',2),
(3,'Anika Tabassum','Mohiuddin Jahangir','Asha Islam','2000-8-19','01724950311','B+ve',1),
(3,'Monira Khatun','Shadat Molla','Shorony Islam','1995-8-18','01724950322','B+ve',1),
(3,'Mahia Mahi','Rakib Ahmed','Fatema Tujjohora','1998-3-27','01724950333','B+ve',8),
(3,'Ataullah','K.M. Jomil','Minara Khatun','1999-4-2','01724950389','A+ve',5),
(3,'Mili Jaman','Rokon Ujjaman','Minar Rahman','1998-5-7','01724950369','B+ve',5),
(4,'Aysha Khatun','Razon Mia','Fatema Khatun','2005-5-7','01724950369','B+ve',3),
(4,'Nisa Jaman','Karim Jaman','Rehena Khatun','2004-5-5','01724950369','B+ve',1),
(4,'Shourov Dey','Manna Dey','Meena Dey','2000-5-9','01724950369','B+ve',4),
(5,'Rakib Ahmed','Shafiq Ahmed','Rita Ahmed','1996-5-20','01724958969','B+ve',4),
(5,'Mahim','Sujon kumar','Meena Saha','1995-2-9','01724950678','B+ve',4),
(6,'Miraj Ahmed','Sakib khan','Tanjim ara','1997-2-9','01724950678','B+ve',3),
(6,'Nisho Khan','Mahim Islam','Mina Ara','1996-2-9','01724950678','B+ve',1),
(6,'Monira Jahan','Siraj Uddin','Tasnim Jahan','1906-4-9','01724950678','B+ve',7),
(6,'Jarin Tasnim','Mojnu Akando','Toma akondo','2007-3-9','01724950678','B+ve',3),
(6,'Tushi Saha','Sairam Saha','Meena Saha','2000-8-9','01724950678','B+ve',2),
(6,'Oishi','Shobuj Islam','Minara Islam','2005-12-9','01724950678','B+ve',6),
(7,'Hanif Mia','Mobassher Mia','Joly Khatun','2005-12-9','01724950678','B+ve',5),
(7,'Tobarok Ali','Shobuj Ali','Mita Banu','2005-12-9','01724950678','B+ve',5),
(7,'Manik Mia','Tuku Mia','Tohura Banu','2005-12-9','01724950678','B+ve',3),
(7,'Mohin Ali','Tobarok Ali','Maha Begum','2005-12-9','01724950678','B+ve',6),
(8,'Shompa Begum','Shahjahan Islam','Jui Islam','1994-12-6','01724950678','B+ve',6),
(8,'Halima Begom','Ajmol Haque','Joly Khatun','1993-11-9','01724950678','B+ve',7),
(8,'Sweety Akhtar','Taimur mia','Shompa Akhter','1992-06-4','01724950678','B+ve',7)
GO
SELECT * FROM employeeInfo 
GO
INSERT INTO salaryInfo VALUES
(1,27,27,0,1111.00,3000.00),
(2,27,26,1,666.66,17333.00),
(3,27,25,2,666.66,17866.00),
(4,27,27,0,555.55,15000.00),
(5,27,27,0,555.55,15000.00),
(6,27,27,0,555.55,15000.00),
(7,27,27,0,555.55,15000.00),
(8,27,27,0,555.55,15000.00),
(9,27,27,0,555.55,15000.00),
(10,27,25,2,555.55,13889.00),
(11,27,27,0,555.55,15000.00),
(12,27,27,0,555.55,15000.00),
(13,27,27,0,555.55,15000.00),
(14,27,27,0,555.55,15000.00),
(15,27,26,0,444.44,12000.00),
(16,27,26,0,444.44,12000.00),
(17,27,26,1,444.44,11555.56),
(18,27,27,0,518.51,14000.00),
(19,27,27,0,518.51,14000.00),
(20,27,25,2,222.22,5555.56),
(21,27,27,0,222.22,6000.00),
(22,27,27,0,222.22,6000.00),
(23,27,27,0,222.22,6000.00),
(24,27,27,0,222.22,6000.00),
(25,27,25,2,222.22,5555.56),
(26,27,27,0,370.37,10000.00),
(27,27,27,0,370.37,10000.00),
(28,27,27,0,370.37,10000.00),
(29,27,27,0,370.37,10000.00),
(30,27,25,0,185.18,5000.00),
(31,27,26,0,185.18,5000.00),
(32,27,27,0,185.18,5000.00)
GO
SELECT * FROM salaryInfo
GO

INSERT INTO STAFF VALUES
(1,'Top Level',1,1,2),
(2,'Top Level',2,2,1),
(3,'Top Level',3,3,1),
(4,'Top Level',4,4,1),
(5,'Mid Level',5,5,2)
GO
SELECT * FROM STAFF
GO

/*
==============================  SECTION 02  ==============================
					INSERT DATA THROUGH STORED PROCEDURE
==========================================================================
*/
------ Inserting data into Emp_Performance----------

EXEC spInsertEmp_Performance 1,'Aysha Mahmud','Good'
EXEC spInsertEmp_Performance 2,'Farid Ahmed','Good'
EXEC spInsertEmp_Performance 3,'Nirob Reza','Okay'
EXEC spInsertEmp_Performance 4,'Moinujjaman','Poor'
 
SELECT * FROM Emp_Performance
GO
-----------Updating Data from EMP_Performance--------
EXEC spUpdateEmp_Performance 4,'Good'
GO
SELECT * FROM Emp_Performance
GO

-----------Deleting Data From EMP_Performance---------

EXEC sp_Delete_Emp_Performance 'Nirob Reza'
GO
SELECT * FROM Emp_Performance
GO

 /*
==============================  SECTION 03  ==============================
								  QUERY
==========================================================================
*/
--[SUB SECTION-1] GENERAL QUERIES
--------A General Select Statement to Retrieve All the Data from a table
-- 1)
SELECT * FROM employeeInfo
GO
------- Select statement to retrieve a number of columns from a table
-- 2)
SELECT EMP_NAME,NAME_FATHER,NAME_MOTHER FROM employeeInfo
GO
-------Select statement to retrieve data older than a certain date 
-- 3)
SELECT * FROM employeeInfo
wHERE DateOfBirth<'2000-01-01'
Go
/* To get data older than,equal to,less than,not equal to etc. we use comparison operators with Where clause.
Cmparison Operators are- (= , > ,< ,<> , <= , >= )
*/
-------Use of Distinct Key Word
-- 4)
SELECT DISTINCT RS_ID FROM employeeInfo
GO
-------USE of TOP Clause
-- 5)
SELECT TOP 15 EMP_ID,EMP_NAME FROM employeeInfo
GO
-------TOP Clause WITH PERCENT Key Word
--6)In this example,Total number of Empolyee=32,50 Percent= 32*50%=16

SELECT TOP 50 PERCENT EMP_NAME FROM employeeInfo
GO
----------WITH TIES Key Word
-- 7)
SELECT TOP 15 WITH TIES DG_ID FROM employeeInfo
ORDER BY  DG_ID
GO
---=================================================================================------
----[SUB SECTION-2] WHERE CLAUSE

----AND OPERATOR-----
-- 1)

SELECT * FROM employeeInfo
WHERE EMP_ID= 3 AND DG_ID= 2
GO

----OR OPERATOR--------
--2)

SELECT * FROM employeeInfo
WHERE EMP_ID= 2 OR DG_ID= 2
GO

---NOT OPERATOR-------
--3)In this example RS_ID-1 is Barishal,It will show everyone who is not from Barishal

SELECT * FROM employeeInfo
WHERE NOT(RS_ID=1)
GO
----IN PHRASE------
--4)
SELECT * FROM salaryInfo
WHERE EMP_ID IN(4,5,6)
GO

---BETWEEN PHRASE-----
--5)
SELECT * FROM employeeInfo
WHERE DateOfBirth BETWEEN '1990-01-01' AND '2000-01-01'
GO

---=================================================================================------
----[SUB SECTION-3] WHERE CLAUSE, LIKE OPERATOR(WILDCARDS)
--1)
SELECT * FROM employeeInfo
WHERE EMP_NAME LIKE 'Aysha%'
GO
--2)
SELECT * FROM employeeInfo
WHERE EMP_NAME LIKE '[ABC]%'
GO
--3)
SELECT * FROM employeeInfo
WHERE EMP_NAME LIKE 'N[A-I]%'
GO
--4)
SELECT * FROM employeeInfo
WHERE DG_ID LIKE '[1-3]%'
GO
--5)NOTE: It will not show any Managers(DG_ID=1) or Supervisors(DG_ID=2)--

SELECT * FROM employeeInfo
WHERE DG_ID LIKE '[^1-2]%'
GO

---=================================================================================------
---[SUB SECTION-4] OTHER CLAUSES

--IS NULL CLAUSE
--1)
SELECT * FROM employeeinfo
WHERE Emp_Name IS NULL
GO
--IS NOT NULL CLAUSE
--2)
SELECT * FROM employeeinfo
WHERE Emp_Name IS NOT NULL
GO
----ORDER BY CLAUSE
--3)
SELECT * FROM employeeInfo
ORDER BY DG_ID
GO
----ORDER BY DESC 
--4)
SELECT * FROM employeeInfo
ORDER BY EMP_ID DESC
GO
----ORDER BY 2 COLUMN
--5)NOTE: It Gives priority to first column  
SELECT * FROM employeeInfo
ORDER BY EMP_ID,RS_ID
GO
------OFFSET & FETCH
--6)

SELECT * FROM employeeInfo
ORDER BY EMP_ID
OFFSET 20 ROWS
FETCH NEXT 12 ROWS ONLY
GO

 /*
==============================  SECTION 04  ==============================
				JOINING,AGGREGATE FUNCTION,SUMMERY QUERIES
==========================================================================
*/

--===========================JOIN============================--
--INNER JOIN
SELECT E.EMP_ID,E.EMP_NAME,S.SalaryTotal FROM employeeInfo E
INNER JOIN  salaryInfo S ON E.EMP_ID=S.EMP_ID
GO

--========================AGGREGATE FUNCTIONS===============--

--1.COUNT
SELECT COUNT(EMP_ID) AS TOTAL_EMPLOYEES FROM employeeInfo
GO

--2.MIN
SELECT MIN(SalaryTotal) AS Min_Wage FROM salaryInfo
Go
--3.MAX
SELECT MAX(SalaryTotal) AS MAX_Wage FROM salaryInfo
GO
--4.SUM
SELECT SUM(SalaryTotal) AS EMP_Expense FROM salaryInfo
GO

--5.AVG
SELECT AVG(NOT_PRESENT) AS AVG_Absence FROM salaryInfo
GO

--====================SUMMARY QUERIES===================

--1) GROUP BY
SELECT RS_ID,COUNT(EMP_NAME) AS Total_Emp FROM employeeInfo
GROUP BY RS_ID
GO

--2) ROLLUP
SELECT RS_ID,COUNT(EMP_NAME) AS EEEMPLOYEE FROM employeeInfo
GROUP BY ROLLUP(RS_ID)
GO

--3) CUBE
SELECT RS_ID,COUNT(EMP_NAME) AS EEEMPLOYEE FROM employeeInfo
GROUP BY CUBE(RS_ID)
GO

--4) GROUPING SETS
SELECT EMP_ID,COUNT(EMP_NAME) AS EEEMPLOYEES FROM employeeInfo
GROUP BY GROUPING SETS(EMP_ID,())
GO

--5) HAVING CLAUSE
SELECT EMP_ID,DateOfBirth,COUNT(EMP_NAME) AS Total_Emp FROM employeeInfo
GROUP BY  EMP_ID,DateOfBirth
HAVING DateOfBirth>'2000-01-01'
GO

 /*
==============================  SECTION 05  ==============================
				     DATA CONVERSION, BUILT IN FUNCTIONS
==========================================================================
*/

--============================== CONVERT DATA TYPES===========================

--CONVERT
SELECT EMP_ID,EMP_NAME, CONVERT(VARCHAR(50),DateOfBirth,101) AS DOB FROM employeeInfo
GO

--CAST
SELECT EMP_ID,EMP_NAME,CAST(DateOfBirth AS VARCHAR(50)) AS DOB FROM employeeInfo
GO

--TRY CONVERT
SELECT EMP_ID,EMP_NAME,TRY_CONVERT(VARCHAR(50),DateOfBirth,107) AS DOB FROM employeeInfo
GO

--==================OTHER FUNCTIONS========================--
--1)LTRIM
SELECT LTRIM('    HELLO SQL') AS 'LTRIM'
GO
--2)RTRIM
SELECT RTRIM('HELLO SQL    ') AS 'RTRIM'
GO
--3)LEFT
SELECT LEFT('HELLO SQL',4) AS 'LEFT'
GO
--4)RIGHT
SELECT RIGHT('HELLO SQL',2) AS 'RIGHT'
GO
--5)SUBSTRING
SELECT SUBSTRING('HELLO SQL',3,8) AS 'SUBSTRING'
GO
--6)LOWER
SELECT LOWER('Hello Sql') AS 'LOWER'
GO

--7)UPPER
SELECT UPPER('Hello Sql') AS 'UPPER'
GO

--8)LEN
SELECT LEN('SQL Server') AS 'LEN'
GO

--9)ROUND
SELECT ROUND(12.5,0) AS 'ROUND'
GO

--10)CEILING
SELECT CEILING(12.5) AS 'CEILING'
GO

--11)FLOOR
SELECT FLOOR(12.5) AS 'FLOOR'
GO

--12)SQUARE
SELECT SQUARE(12) AS 'SQUARE'
GO

--13) SQRT
SELECT SQRT(49) AS 'SQRT'
GO
------------Date related functions-------------
--14.GETDATE()
SELECT GETDATE() AS 'CURRENT DATE'
GO

--15.DAY
SELECT DAY(GETDATE()) AS 'DAY'
GO

--16.MONTH
SELECT MONTH(GETDATE()) AS 'MONTH'
GO

--17.YEAR
SELECT YEAR(GETDATE()) AS 'YEAR'
GO

--===============DATENAME==================
--18----------

SELECT DATENAME(DAY,GETDATE()) AS 'DAY'
GO

SELECT DATENAME(MONTH,GETDATE()) AS 'MONTH'
GO

SELECT DATENAME(YEAR,GETDATE()) AS 'YEAR'
GO

SELECT DATENAME(HOUR,GETDATE()) AS 'HOUR'
GO

SELECT DATENAME(MINUTE,GETDATE()) AS 'MINUTE'
GO

SELECT DATENAME(SECOND,GETDATE()) AS 'SECOND'
GO

SELECT DATENAME(WEEKDAY,GETDATE()) AS 'WEEKDAY'
GO

--=======================DATEADD===================
--19--------
SELECT DATEADD(DAY,3,GETDATE())
GO

SELECT DATEADD(MONTH,2,GETDATE())
GO

SELECT DATEADD(YEAR,3,GETDATE())
GO

SELECT DATEADD(HOUR,10,GETDATE())
GO

SELECT DATEADD(MINUTE,16,GETDATE())
GO

--================DATEDIFF===================
--20-------------
SELECT DATEDIFF(DAY,'2001-01-01',GETDATE()) AS 'DAY'
GO

SELECT DATEDIFF(MONTH,'2001-01-01',GETDATE()) AS 'MONTH'
GO

SELECT DATEDIFF(YEAR,'2001-01-01',GETDATE()) AS 'YEAR'
GO


