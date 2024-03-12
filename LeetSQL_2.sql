'
Write your MySQL query statement below, <> is the same as !=
Find the names of the customer that are not referred by the customer with id = 2.
'

SELECT name 
FROM Customer 
WHERE referee_id <> 2 or referee_id IS NULL;