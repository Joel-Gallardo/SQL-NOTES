/*Concatenate Columns
The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):
Example*/
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

--Note: To get the SQL statement above to work in MySQL use the following:
--MySQL Example
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

--Note: To get the SQL statement above to work in Oracle use the following:
--Oracle Example
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;