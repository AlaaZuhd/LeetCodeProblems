/* Write your T-SQL query statement below */

SELECT score, DENSE_RANK() OVER(ORDER BY score desc) AS rank
FROM Scores 
ORDER BY score DESC; 