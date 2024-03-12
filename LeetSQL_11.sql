'# Write your MySQL query statement below'

SELECT E.name, b.bonus
FROM Employee as E
Left JOIN BONUS as b ON e.empId = b.empId
Where b.bonus < 1000 or b.bonus is NULL;