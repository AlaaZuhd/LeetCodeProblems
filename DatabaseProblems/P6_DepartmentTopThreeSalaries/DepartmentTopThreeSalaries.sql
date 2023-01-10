/* Write your T-SQL query statement below */


SELECT a.Department, a.Employee, a.Salary FROM
(
SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary, DENSE_RANK() OVER(PARTITION BY E.departmentId ORDER BY E.salary DESC) AS denseRank
FROM Employee E JOIN Department D ON E.departmentId = D.id
) a

where a.denseRank <=3


