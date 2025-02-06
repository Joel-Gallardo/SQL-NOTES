-- SQL ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

-- ***** ALTER TABLE - ADD Column
-- To add a column in a table, use the following syntax:
ALTER TABLE table_name
ADD column_name datatype;

-- The following SQL adds an "Email" column to the "Customers" table:
ALTER TABLE Customers
ADD Email varchar(255);


-- ******* ALTER TABLE - DROP COLUMN
-- To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):

-- ALTER TABLE table_name
-- DROP COLUMN column_name;
-- The following SQL deletes the "Email" column from the "Customers" table:

-- Example
ALTER TABLE Customers
DROP COLUMN Email;


-- ********** ALTER TABLE - RENAME COLUMN
-- To rename a column in a table, use the following syntax:

-- ALTER TABLE table_name
-- RENAME COLUMN old_name to new_name;
-- To rename a column in a table in SQL Server, use the following syntax:

-- SQL Server:
EXEC sp_rename 'table_name.old_name',  'new_name', 'COLUMN';




-- ******* ALTER TABLE - ALTER/MODIFY DATATYPE
-- To change the data type of a column in a table, use the following syntax:
-- SQL Server / MS Access:
ALTER TABLE table_name
ALTER COLUMN column_name datatype;


-- ADD Column Example
-- Now we want to add a column named "DateOfBirth" in the "Persons" table.
-- We use the following SQL statement:
ALTER TABLE Persons
ADD DateOfBirth date;

-- Change Data Type Example
-- Now we want to change the data type of the column named "DateOfBirth" in the "Persons" table.
-- We use the following SQL statement:
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

-- DROP COLUMN Example
-- Next, we want to delete the column named "DateOfBirth" in the "Persons" table.
-- We use the following SQL statement:
ALTER TABLE Persons
DROP COLUMN DateOfBirth;