/*
In SQL, NULL represents a missing or undefined value in a database column.
It is important to note that NULL is not the same as zero (0) or an empty string ('');
it indicates the absence of any value.
*/

/*When querying data, you cannot use standard comparison operators (like = or !=) to check for NULL.
Instead, SQL provides a specific clause to handle this scenario: IS NULL or IS NOT NULL.
*/

--To find employees who do not have a manager assigned (manager_id is NULL), you can use this query:
SELECT employee_id, first_name, last_name
FROM employees
WHERE manager_id IS NULL;

--If you want to retrieve employees who have a manager assigned (manager_id is not NULL), you can use:
SELECT employee_id, first_name, last_name, manager_id
FROM employees
WHERE manager_id IS NOT NULL;



/*SQL NULL Functions
SQL IFNULL(), ISNULL(), COALESCE(), and NVL() Functions

Look at the following SELECT statement:
*/
SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;
--In the example above, if any of the "UnitsOnOrder" values are NULL, the result will be NULL.

--Solution SQL Server
--The SQL Server ISNULL() function lets you return an alternative value when an expression is NULL:
SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Products;

--or we can use the COALESCE() function, like this:
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;
