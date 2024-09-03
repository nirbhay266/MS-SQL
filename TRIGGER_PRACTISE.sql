Use Trigger_Demo
Go
---------------------------DDL TRIGGER---------------------------------------
Create table Demo1
(
ID int ,
name varchar(100)
);
------------------------------------------------------------------------------
CREATE TRIGGER DEM
ON DATABASE
FOR CREATE_TABLE
AS 
BEGIN
PRINT 'YOU CAN NOT CREATE TABLE IN THIS DATABASE'
ROLLBACK TRANSACTION
END
--------------------------------------------------------------------------------
ALTER TRIGGER DEM
ON DATABASE 
FOR CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS 
BEGIN
PRINT 'YOU CAN NOT CREATE TABLE, ALTER TABLE, DROP TABLE IN THIS DATABASE'
ROLLBACK TRANSACTION
END
--------------------------------------------------------------------------------
CREATE TABLE DEMO2
(
ID INT,
NAME NVARCHAR(100)
);

DROP TABLE Demo1

ALTER TABLE DEMO
ADD ADDRESS VARCHAR(100)
-------------------------DDL EVENT GROUPS-------------------------------------------
ALTER TRIGGER DEM
ON DATABASE 
FOR DDL_TABLE_EVENTS
AS 
BEGIN
PRINT 'YOU CAN NOT CREATE TABLE, ALTER TABLE, DROP TABLE IN THIS DATABASE'
ROLLBACK TRANSACTION
END
------------------------------------------------------------------------------------
ALTER TRIGGER DEM
ON DATABASE 
FOR DDL_TABLE_EVENTS,DDL_PROCEDURE_EVENTS
AS 
BEGIN
PRINT 'YOU CAN NOT CREATE TABLE, ALTER TABLE, DROP TABLE,CREATE PROC,ALTER PROC,DROP PROC IN THIS DATABASE'
ROLLBACK TRANSACTION
END
------------------------------------------------------------------------
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Salary DECIMAL(10, 2),
    Department NVARCHAR(50)
);
CREATE PROCEDURE AddEmploye
    @EmployeeID INT,
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Salary DECIMAL(10, 2),
    @Department NVARCHAR(50)
AS
BEGIN
    INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, Department)
    VALUES (@EmployeeID, @FirstName, @LastName, @Salary, @Department);
END;

EXEC AddEmployeE
    @EmployeeID = 3,
    @FirstName = 'SANDHANA',
    @LastName = 'KumarI',
    @Salary = 51100.00,
    @Department = 'HR';

	SELECT * FROM EMPLOYEES
------------------------------------------------------------------------------------
ALTER TRIGGER DEM
ON DATABASE 
FOR CREATE_TABLE,ALTER_TABLE,DROP_TABLE,DDL_ROLE_EVENTS
AS 
BEGIN
PRINT 'YOU CAN NOT CREATE TABLE, ALTER TABLE, DROP TABLE IN THIS DATABASE '
ROLLBACK TRANSACTION
END
-------------------------------SERVER LEVEL TRIGGER-----------------------------------
CREATE TABLE TABLEADIT
(
DATABASENAME NVARCHAR(100),
TABLENAME NVARCHAR(100),
EVENTNAME NVARCHAR(100),
LOGINNAME NCHAR(100),
SQLCOMMAND NVARCHAR(100),
AUDITDATETIME DATETIME
);
CREATE TRIGGER TRIAUDIT
ON ALL SERVER
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS 
BEGIN
    DECLARE @EVENTDATA XML;
    SELECT @EVENTDATA = EVENTDATA();
    
    INSERT INTO yadav.dbo.TABLEAUDIT(DATABASENAME, TABLENAME, EVENTNAME, LOGINNAME, SQLCOMMAND, AUDITDATETIME)
    VALUES (
        @EVENTDATA.value('(/EVENT_INSTANCE/DATABASE_NAME)[1]', 'VARCHAR(100)'),
        @EVENTDATA.value('(/EVENT_INSTANCE/OBJECT_NAME)[1]', 'VARCHAR(100)'),
        @EVENTDATA.value('(/EVENT_INSTANCE/EVENT_TYPE)[1]', 'VARCHAR(100)'),
        @EVENTDATA.value('(/EVENT_INSTANCE/LOGIN_NAME)[1]', 'VARCHAR(100)'),
        @EVENTDATA.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'VARCHAR(MAX)'),
        GETDATE()
    );
END;
-------------------------------------------------
SELECT * FROM yadav.dbo.TABLEADIT
--------------------------------------------
CREATE TABLE TestTable (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50)
);
-----------------------------------------------

CREATE TABLE HSFH
(
ID INT
);
DROP TABLE COUNTRY


DROP TRIGGER TRIAUDIT ON ALL SERVER;
