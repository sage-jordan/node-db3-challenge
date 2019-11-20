-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName,CategoryName FROM Product as P JOIN Category as C ON P.Id = C.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT Id,CompanyName FROM [Order] as O JOIN Shipper as S ON O.ShipVia=S.Id WHERE OrderDate<"2012-8-9";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName,Quantity FROM OrderDetail as OD JOIN Product as P ON OD.ProductId=P.Id WHERE OD.OrderId="10251" ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT Id,CompanyName,Lastname FROM [Order] as O JOIN Customer as C ON O.CustomerId=C.Id JOIN Employee as E ON E.Id=O.EmployeeId;
