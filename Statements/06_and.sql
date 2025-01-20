/*The WHERE clause can contain one or many AND operators.
The AND operator displays a record if all the conditions are TRUE.

The AND operator is used to filter records based on more than one condition, like if you want to return all customers from Spain that starts with the letter 'G':

Example
Select all customers from Spain that starts with the letter 'G':
*/
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

/*
All Conditions Must Be True
The following SQL statement selects all fields from Customers where Country is "Germany" AND City is "Berlin" AND PostalCode is higher than 12000:

Example
*/
SELECT * FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin'
AND PostalCode > 12000;

/*
Combining AND and OR
You can combine the AND and OR operators.

The following SQL statement selects all customers from Spain that starts with a "G" or an "R".

Make sure you use parenthesis to get the correct result.

Example
Select all Spanish customers that starts with either "G" or "R":
*/
SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');