/* Write your T-SQL query statement below */

SELECT W.ID2 AS Id
FROM 
(select W1.id AS ID1, W2.id AS ID2, W1.temperature AS TEMP1, W2.temperature AS TEMP2, DATEDIFF(DAY, W1.recordDate, W2.recordDate) AS Datediff FROM  Weather W1, Weather W2 WHERE W1.id <> W2.id) W
WHERE 
W.Datediff = 1 AND W.TEMP2 > W.TEMP1; 


-- THE PERFORMANCE WITHOUT THIS WHERE W1.id <> W2.id CLAUSE WAS MUCH BETTER (BUT IT SHOULD NOT BE, RIGHT?)
SELECT W.ID2 AS Id
FROM 
(select W1.id AS ID1, W2.id AS ID2, W1.temperature AS TEMP1, W2.temperature AS TEMP2, DATEDIFF(DAY, W1.recordDate, W2.recordDate) AS Datediff FROM  Weather W1, Weather W2) W
WHERE 
W.Datediff = 1 AND W.TEMP2 > W.TEMP1; 


WITH CTE_SELECTRECORDSWITHDATESDIFF
AS 
(
    select W1.id AS ID1, W2.id AS ID2, 
    W1.temperature AS TEMP1, W2.temperature AS TEMP2, 
    DATEDIFF(DAY, W1.recordDate, W2.recordDate) AS Datediff 
    FROM  Weather W1, Weather W2
    WHERE W1.id <> W2.id
)

SELECT W.ID2 AS Id
FROM 
(SELECT * FROM CTE_SELECTRECORDSWITHDATESDIFF) W
WHERE 
W.Datediff = 1 AND W.TEMP2 > W.TEMP1; 




SELECT W2.id AS Id
FROM Weather W1 JOIN Weather W2 ON DATEDIFF(DAY, W1.recordDate, W2.recordDate) = 1
WHERE 
W2.temperature  > W1.temperature ; 


