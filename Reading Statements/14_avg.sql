/*The SQL AVG() Function
The AVG() function returns the average value of a numeric column.

Example
Find the average price of all products:
Note: NULL values are ignored.*/
SELECT AVG(Price)
FROM Products;

/*
Add a WHERE Clause
You can add a WHERE clause to specify conditions:

Example
Return the average price of products in category 1:
*/
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

/*
Use an Alias
Give the AVG column a name by using the AS keyword.

Example
Name the column "average price":
*/
SELECT AVG(Price) AS [average price]

/*
Higher Than Average
To list all records with a higher price than average, we can use the AVG() function in a sub query:

Example
Return all products with a higher price than the average price:
*/
SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);

/*
Use AVG() with GROUP BY
Here we use the AVG() function and the GROUP BY clause, to return the average price for each category in the Products table:

Example
*/
SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;