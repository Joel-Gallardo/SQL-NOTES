
-- The SELECT TOP clause is used to specify the number of records to return.
-- The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
-- Select only the first 3 records of the Customers table:

SELECT TOP 3 * FROM Customers;
--Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

-- SQL TOP PERCENT Example
-- The following SQL statement selects the first 50% of the records from the "Customers" table (for SQL Server/MS Access):
SELECT TOP 50 PERCENT * FROM Customers;

-- ADD a WHERE CLAUSE
-- The following SQL statement selects the first three records from the "Customers" table, where the country is "Germany" (for SQL Server/MS Access):
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';