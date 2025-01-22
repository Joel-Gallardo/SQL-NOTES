/*
MIN() - returns the smallest value within the selected column
MAX() - returns the largest value within the selected column

MIN Example
Find the lowest price in the Price column:
*/
SELECT MIN(Price)
FROM Products;

/*
MAX Example
Find the highest price in the Price column:
*/
SELECT MAX(Price)
FROM Products;

/*
Set Column Name (Alias)
When you use MIN() or MAX(), the returned column will not have a descriptive name. To give the column a descriptive name, use the AS keyword:

Example*/
SELECT MIN(Price) AS SmallestPrice
FROM Products;

/*
Use MIN() with GROUP BY
Here we use the MIN() function and the GROUP BY clause, to return the smallest price for each category in the Products table:

Example*/
SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;