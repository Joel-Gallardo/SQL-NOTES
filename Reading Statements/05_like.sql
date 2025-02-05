/*
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

 The percent sign % represents zero, one, or multiple characters
 The underscore sign _ represents one, single character

Example
Select all customers that starts with the letter "a":
*/
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

/*The _ wildcard represents a single character.

It can be any character or number, but each _ represents one, and only one, character.

Example
Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters:
*/
SELECT * FROM Customers
WHERE city LIKE 'L_nd__';

/*
The % wildcard represents any number of characters, even zero characters.

To return records that contains a specific letter or phrase, add the % both before and after the letter or phrase.

Example
Return all customers from a city that contains the letter 'L':
*/
SELECT * FROM Customers
WHERE city LIKE '%L%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

/*
Tip: You can also combine any number of conditions using AND or OR operators.

Example
Return all customers that starts with 'a' or starts with 'b':
*/
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

/*
To return records that ends with a specific letter or phrase, add the % at the beginning of the letter or phrase.

Example
Return all customers that ends with 'a':
*/
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

/*
Tip: You can also combine "starts with" and "ends with":

Example
Return all customers that starts with "b" and ends with "s":
*/
SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';

/*
Any wildcard, like % and _ , can be used in combination with other wildcards.

Example
Return all customers that starts with "a" and are at least 3 characters in length:
*/
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';
/*
Example
Return all customers that have "r" in the second position:
*/
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

/*
If no wildcard is specified, the phrase has to have an exact match to return a result.

Example
Return all customers from Spain:
*/
SELECT * FROM Customers
WHERE Country LIKE 'Spain';
