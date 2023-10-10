/* USE Northwind
SELECT [ContactName], [Address]
    FROM [dbo].[Customers];

SELECT LastName, HomePhone
    FROM Employees

SELECT ContactName, Address
    FROM Customers
    WHERE City LIKE 'London' 

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice >= 20 AND UnitPrice <= 30 

SELECT ProductName, UnitsInStock
FROM Products
WHERE SupplierID IN (SELECT supplierID FROM Suppliers WHERE companyName = 'Tokyo Traders') 

SELECT ProductName
FROM Products
WHERE UnitsInStock = 0 

SELECT * 
FROM Products
WHERE QuantityPerUnit LIKE '%bottle%'; 

SELECT CompanyName
FROM Customers
WHERE CompanyName LIKE '%Store%'

SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('Japan', 'Italy') 

SELECT CompanyName, Country
FROM Customers
ORDER BY country, CompanyName */

SELECT ROUND(UnitPrice * Quantity * (1-Discount),2) as 'OrderPrice'
FROM [Order Details]
WHERE OrderID = 10250

SELECT Phone + ',' + isNULL(Fax, ' ') AS 'Phone Fax'
FROM Suppliers



