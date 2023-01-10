/* Write your T-SQL query statement below */

-- SELECT departmentId, MIN(salary) AS MIN_SALARY
-- INTO #A
-- FROM Employee
-- GROUP BY departmentId;

-- SELECT D.name, E.name, A.MIN_SALARY
-- FROM 
-- Employee E JOIN #A ON E.departmentId = #A.departmentId
-- JOIN Department D ON D.departmentId = E.departmentId 
-- WHERE 
-- E.salary = #A.MIN_SALARY;



-- SELECT E.departmentId, E.name, E.MIN(salary) AS MIN_SALARY
-- FROM Employee E JOIN Deprtment D ON E.departmentId = D.departmentId
-- GROUP BY departmentId;


--  THIS ACCEPTABLE IN MY SQL BUT NOT IN SQL SERVER 
-- SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary
-- FROM 
-- Employee E JOIN Department D ON D.id = E.departmentId 
-- WHERE 
-- (E.DepartmentId E.salary) IN 
-- (
--     SELECT departmentId, max(salary) AS MIN_SALARY
--     FROM Employee
--     GROUP BY departmentId
-- )


-- WHY I CAN'T USE WHERE TO CHECK IF A GROUP OF COLUMNS VALUES ARE IN ANOTHER SET IN SQL SERVER? 


SELECT DISTINCT D.name AS Department, E.name AS Employee, E.salary AS Salary
FROM 
Employee E JOIN Department D ON D.id = E.departmentId 
JOIN  
(
    SELECT departmentId, max(salary) AS MAX_SALARY
    FROM Employee
    GROUP BY departmentId
) AS MAX_DEPSAL ON E.salary = MAX_DEPSAL.MAX_SALARY AND MAX_DEPSAL.departmentId = E.departmentId

