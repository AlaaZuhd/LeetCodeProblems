
SELECT 
(
    SELECT DISTINCT salary FROM Employee 
    ORDER BY salary DESC
    OFFSET 1 ROW
    FETCH NEXT 1 ROW ONLY
) 
AS SecondHighestSalary ; 

-- tHE NNER QUERY IS USED AS A TEMP TABLE. IT'S USED TO OVERCOME THE PROBLEM OF NO'T HAVING A SECOND HIGHEST SALARY. 
-- OFFSET AND FETCH CAN BE USED IN SQL SERVER INSEAD OF OFFSET AND LIMIT IN SQL. 
-- ACORDING TO THE OFFICIAL SOLUTION OF THIS PROBLEM, WE CAN USE THE IFNULL FUNCTION. iT WILL BE USEFUL IN CASE THE REQUEST OUTCOME IN CASE IF THERE IS NO SECOND HGHEST SALARY IS NEEDED TO BE STH OTHER THAN THE NULL VALUE. 
-- IFNULL IS NOT SUPPORTED IN SQL SERVER, BUT INSTEAD WE CAN USE ISNULL IN THE SAME WAY. 


SELECT ISNULL
(
    (SELECT DISTINCT salary FROM Employee 
    ORDER BY salary DESC
    OFFSET 1 ROW
    FETCH NEXT 1 ROW ONLY)
    , NULL
) 
AS SecondHighestSalary ; 