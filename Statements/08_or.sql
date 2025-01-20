/* The OR operator displays a record if any of the conditions are TRUE.

The WHERE clause can contain one or more OR operators.

The OR operator is used to filter records based on more than one condition, like if you want to return all customers from Germany but also those from Spain:

Example
Select all customers from Germany or Spain:
*/
SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

