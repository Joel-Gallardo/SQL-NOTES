-- SQL CHECK Constraint
-- The CHECK constraint is used to limit the value range that can be placed in a column.

-- If you define a CHECK constraint on a column it will allow only certain values for this column.

-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

-- SQL CHECK on CREATE TABLE
-- The following SQL creates a CHECK constraint on the "Age" column when the "Persons" table is created. The CHECK constraint ensures that the age of a person must be 18, or older:
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);

-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);

-- SQL CHECK on ALTER TABLE
-- To create a CHECK constraint on the "Age" column when the table is already created, use the following SQL:
ALTER TABLE Persons
ADD CHECK (Age>=18);

--To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:
ALTER TABLE Persons
ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');

-- DROP a CHECK Constraint
-- To drop a CHECK constraint, use the following SQL:
ALTER TABLE Persons
DROP CONSTRAINT CHK_PersonAge;