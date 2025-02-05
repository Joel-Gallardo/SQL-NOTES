/*SQL Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of that query.

An alias is created with the AS keyword.

Example*/
SELECT CustomerID AS ID
FROM Customers;

/*Syntax
When alias is used on column:

SELECT column_name AS alias_name
FROM table_name;

When alias is used on table:

SELECT column_name(s)
FROM table_name AS alias_name;
*/


/*
Using Aliases With a Space Character
If you want your alias to contain one or more spaces, like "My Great Products", surround your alias with square brackets or double quotes.

Example
Using [square brackets] for aliases with space characters:
*/
SELECT ProductName AS [My Great Products]
FROM Products;
/*
Example
Using "double quotes" for aliases with space characters:
*/
SELECT ProductName AS "My Great Products"
FROM Products;

--Note: Some database systems allows both [] and "", and some only allows one of them.


