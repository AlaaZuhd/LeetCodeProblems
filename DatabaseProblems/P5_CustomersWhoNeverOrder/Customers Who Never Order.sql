/* Write your T-SQL query statement below */

-- 1- USING LEFT JOIN. 
SELECT C.name AS customers FROM Customers C
LEFT JOIN Orders O 
ON 
C.id = O.customerId 
WHERE O.id IS NULL; 

-- 2- USING NESTED-QUERY. -- THIS ONE WAS THE BEST IN TERMS OF THE CONSUMED TIME. 
SELECT C.name AS customers FROM Customers C 
WHERE C.id NOT IN 
(
    SELECT DISTINCT O.customerId FROM Orders O
);

-- 3- USING CTE (SAME LOGIC AS THE NESTED QUERY BUT IT MAY BE MORE READABLE USING CTE INSTEAD OF A NESTED QUERY)
WITH CTE_CustomersIdsWhoMadeOrders 
AS 
(
    SELECT DISTINCT customerId FROM Orders
) 

-- SELECT C.name AS customers FROM Customers C 
-- WHERE C.id NOT IN (SELECT * FROM CTE_CustomersIdsWhoMadeOrders)

-- THE SAME LOGIC CAN BE USED WITH USING TEMP TABLE INSTEAD OF A CTB. 