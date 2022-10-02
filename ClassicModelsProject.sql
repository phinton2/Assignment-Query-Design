-- 1. Who is at the top of organization (i.e., reports to no one)? 
SELECT lastName, firstName, jobTitle
FROM employees
WHERE reportsTo IS NULL;


-- 2. Who reports to William Patterson? 
SELECT lastName, firstName
FROM employees
WHERE reportsTo = 1088;


-- 3. List all the products purchased by Herkku Gifts. 
SELECT productName, customerName
FROM products
INNER JOIN customers
WHERE customerName LIKE '%Herkku%' AND customerNumber = 167;


-- 4. Find products containing the name 'Ford'. 
SELECT *
FROM products
WHERE productName LIKE '%Ford%';


-- 5. List products ending in 'ship'. 
SELECT *
FROM products
WHERE productName LIKE '%ship';


-- 6. Report the number of customers in Las Vegas, San Francisco, Singapore, and Paris 
SELECT customers.city, COUNT(*) AS CustomerCount
FROM customers
WHERE customers.city IN ('Las Vegas','San Francisco','Singapore','Paris')
GROUP BY customers.city;


-- 7. What are the products with a product code in the range S700_1000 to S700_1499? 
SELECT *
FROM products
WHERE productCode > 'S700_1000' AND productCode < 'S700_1499';


-- 8. Which customers have a digit character '4' in their name? 
SELECT *
FROM customers
WHERE customerName LIKE '%4%';


-- 9. List the names of employees called Dianne or Diane. 
SELECT lastName, firstName
FROM employees
WHERE firstName = 'Dianne' OR firstName = 'Diane' OR lastName = 'Dianne' OR lastName = 'Diane';


-- 10. List the products containing ship or boat in their product name. 
SELECT *
FROM products
WHERE productName LIKE '%ship%' OR productName LIKE '%boat%';


-- 11. List the products with a product code beginning with S700. 
SELECT *
FROM products
WHERE productCode LIKE 'S700%';


-- 12. List the names of employees called Larry or Barry. 
SELECT lastName, firstName
FROM employees
WHERE firstName = 'Larry' OR firstName = 'Barry' OR lastName = 'Larry' OR lastName = 'Barry';


-- 13. List the vendors whose name ends in Diecast. 
SELECT productVendor
FROM products
WHERE productVendor LIKE '%Diecast';


-- 14. List the names of sales representatives who have the maximum number of customers. 
SELECT employees.lastName, employees.firstName, COUNT(*) AS COUNTER
FROM employees
JOIN customers 
ON customers.salesRepEmployeeNumber = employees.employeeNumber
GROUP BY employees.lastName, employees.firstName
ORDER BY COUNTER DESC;

