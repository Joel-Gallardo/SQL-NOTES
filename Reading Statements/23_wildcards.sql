-- SQL Wildcard Characters
-- A wildcard character is used to substitute one or more characters in a string.

-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- Return all customers that starts with the letter 'a':
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

/*
Wildcard Characters
Symbol	Description
%	Represents zero or more characters
_	Represents a single character
[]	Represents any single character within the brackets *
^	Represents any character not in the brackets *
-	Represents any single character within the specified range *
{}	Represents any escaped character **

* Not supported in PostgreSQL and MySQL databases.
** Supported only in Oracle databases.
*/


-- Return all customers that ends with the pattern 'es':
SELECT * FROM Customers
WHERE CustomerName LIKE '%es';

-- Return all customers that contains the pattern 'mer':
SELECT * FROM Customers
WHERE CustomerName LIKE '%mer%';

-- Using the _ Wildcard
-- The _ wildcard represents a single character.
-- It can be any character or number, but each _ represents one, and only one, character.
-- Example
-- Return all customers with a City starting with any character, followed by "ondon":
SELECT * FROM Customers
WHERE City LIKE '_ondon';


-- Return all customers with a City starting with "L", followed by any 3 characters, ending with "on":
SELECT * FROM Customers
WHERE City LIKE 'L___on';

-- Using the [] Wildcard
-- The [] wildcard returns a result if any of the characters inside gets a match.
-- Example
-- Return all customers starting with either "b", "s", or "p":
SELECT * FROM Customers
WHERE CustomerName LIKE '[bsp]%';


-- Using the - Wildcard
-- The - wildcard allows you to specify a range of characters inside the [] wildcard.
-- Example
-- Return all customers starting with "a", "b", "c", "d", "e" or "f":
SELECT * FROM Customers
WHERE CustomerName LIKE '[a-f]%';


-- Combine Wildcards
-- Any wildcard, like % and _ , can be used in combination with other wildcards.
-- Example
-- Return all customers that starts with "a" and are at least 3 characters in length:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

-- Example
-- Return all customers that have "r" in the second position:
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';


-- Without Wildcard
-- If no wildcard is specified, the phrase has to have an exact match to return a result.
-- Example
-- Return all customers from Spain:
SELECT * FROM Customers
WHERE Country LIKE 'Spain';
