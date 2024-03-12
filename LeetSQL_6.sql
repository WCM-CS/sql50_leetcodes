'
# Write your MySQL query statement below
Write a solution to show the unique ID of each user, 
If a user does not have a unique ID replace just show null.
'

SELECT EU.unique_id, E.name
FROM Employees AS E
LEFT JOIN EmployeeUNI as EU
ON E.id = EU.id;
