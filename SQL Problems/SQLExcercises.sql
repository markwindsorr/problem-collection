# SQL Exercises

#-----------------------------------------------------------
# SQL SELECT

# Get all columns from Customers Table
SELECT * FROM Customers

# Select City from the Customers Table
SELECT City FROM Customers

# Select all the different values from country in customers table
SELECT DISTINCT Country FROM Customers

#-----------------------------------------------------------
# SQL WHERE

# Select all records where the City column has the value "Berlin"
SELECT * FROM Customers
WHERE City = "Berlin";

# Use the NOT keyword to select all records where City is not "Berlin"
SELECT * FROM Customers
WHERE NOT City = 'Berlin'

# Select all records where the CustomerID column has the value 32
SELECT * FROM Customers
WHERE CustomerID = 32;

# Select all records where the City column has the value 'Berlin'
# and the PostalCode column has the value 12209
SELECT * FROM Customers
WHERE City = 'Berlin'
AND PostalCode = 12209;

# Select all records where the City column has the value 'Berlin' or 'London'.
SELECT * FROM Customers
WHERE City = 'Berlin'
OR CITY = 'London';


#-----------------------------------------------------------
# SQL Order By

# Select all records from the Customers table, sort the result alphabetically by the column City.
SELECT * FROM Customers
ORDER BY City;

# Select all records from the Customers table, sort the result reversed alphabetically by the column City.
SELECT * FROM Customers
ORDER BY City DESC;

# Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.
SELECT * FROM Customers
ORDER BY Country, City;

#-----------------------------------------------------------
# SQL Insert

# Insert a new record in the Customers table

INSERT INTO Customers(
CustomerName, 
Address, 
City, 
PostalCode,
Country)

VALUES(
'Hekkan Burger',
'Gateveien 15',
'Sandnes',
'4306',
'Norway');


#-----------------------------------------------------------
# SQL JOIN

-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

# Insert the missing parts in the JOIN clause to join the two tables 
# Orders and Customers, using the CustomerID field in both tables as 
# the relationship between the two tables.

SELECT * FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;





























