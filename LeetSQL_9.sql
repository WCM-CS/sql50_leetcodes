'
# Write your MySQL query statement below
Write a solution to find all dates Id with higher temperatures compared to its previous dates 
(yesterday). Return the result table in any order.
'

SELECT w1.id
FROM Weather as w1, Weather as w2 'select the same table twice'
where w1.temperature > w2.temperature # where temp1 greater than temp2
and datediff(w1.recordDate, w2.recordDate)=1; # and date 1 is larger than date 2 by one day