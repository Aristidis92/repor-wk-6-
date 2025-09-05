USE salesdb;
-- to get the firstName, lastName, email, and officeCode of all employees and to combine the employees table with the offices table using the officeCode column.
SELECT 
    firstName, 
    lastName, 
    email, 
    officeCode
FROM employees
INNER JOIN offices ON officeCode = o.officeCode;

-- to get the productName, productVendor, and productLine from the products table and to combine the products table with the productlines table using the productLine column.
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders and to combine the customers table with the orders table using the customerNumber column.
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;