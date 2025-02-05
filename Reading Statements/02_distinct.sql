-- The SELECT DISTINCT statement is used to return only distinct (different) values.

/* Inside a table, a column often contains many duplicate values;
   and sometimes you only want to list the different (distinct) values.
*/

SELECT DISTINCT Country FROM customers; 

/*
Count Distinct
By using the DISTINCT keyword in a function called COUNT, we can return the number of different countries.
*/
-- Example
SELECT COUNT(DISTINCT Country) FROM Customers;