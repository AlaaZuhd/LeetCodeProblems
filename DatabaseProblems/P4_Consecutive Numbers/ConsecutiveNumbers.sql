/* Write your T-SQL query statement below */

SELECT DISTINCT l1.num AS ConsecutiveNums FROM 
Logs l1 JOIN Logs l2 ON l2.id = l1.id+1 JOIN Logs l3 ON l3.id = l2.id + 1
WHERE l1.num = l2.num AND l2.num = l3.num; 

-- SOLUTION SUBMITTED BY ANOTHER ONE.

select distinct num as 'ConsecutiveNums' from Logs m
where num = (select num from Logs x where x.id=m.id+1)
and num = (select num from Logs x where x.id=m.id+2);