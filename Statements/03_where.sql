/*
The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.

Note: The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!
*/

-- Example
SELECT * FROM customers
WHERE City = 'Mexico';

SELECT * FROM customers
WHERE customerID = 4;

/*
You can use other operators than the = operator to filter the search.

Example
Select all customers with a CustomerID greater than 80:
*/
SELECT * FROM Customers
WHERE CustomerID > 80;

/*
The following operators can be used in the WHERE clause:

=           Equal	
>           Greater than	
<	        Less than	
>=	        Greater than or equal	
<=  	    Less than or equal	
<>	        Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN	    Between a certain range	
LIKE	    Search for a pattern	
IN	        To specify multiple possible values for a column

*/