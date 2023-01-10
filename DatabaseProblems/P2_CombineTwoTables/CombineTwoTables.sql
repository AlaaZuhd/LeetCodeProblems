/* Write your T-SQL query statement below */

SELECT person.firstName, person.lastName, address.city, address.state
FROM 
Person person 
LEFT JOIN Address address 
ON 
person.personId = address.personId;