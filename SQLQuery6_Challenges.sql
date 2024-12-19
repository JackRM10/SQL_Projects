CREATE PROCEDURE dbo.uspGetAddress4 @CityName nvarchar(30) OUTPUT
AS
SELECT City FROM Person.Address
WHERE AddressID = 38 AND PostalCode = 48226
GO 
DECLARE @CityName nvarchar(30)
EXEC dbo.uspGetAddress4 @CityName = @CityName OUTPUT
PRINT @CityName

-- SELECT DISTINCT CHALLENGE
/* This challenege require a sql select fistinct statement
against the AdventureWorks database.*/
SELECT * FROM Person.Address
SELECT DISTINCT City FROM Person.Address;

-- SQL SELECT TOP CHALLENGE
SELECT TOP 10 * FROM Sales.CountryRegionCurrency;

-- SQL MIN/MAX CHALLENGE
SELECT * FROM Sales.SalesPerson

SELECT MIN(Bonus)
FROM Sales.SalesPerson; 

SELECT MAX(Bonus)
FROM Sales.SalesPerson; 

-- SQL LIKE CHALLENGE
SELECT * FROM Person.Address
WHERE City LIKE 'nor%';

-- SQL WILDCARD CHALLENGE
SELECT * FROM Person.Address
WHERE City LIKE 'L___on';

SELECT * FROM Person.Address
WHERE AddressID BETWEEN 500 AND 1000;



