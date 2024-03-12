'
# Write your MySQL query statement below
Write a solution to find the IDs of the users who visited without making any transactions,
and the number of times they made these types of visits.
'

SELECT V.customer_id, COUNT(V.visit_id) AS count_no_trans
FROM Visits as V
LEFT JOIN Transactions as T
ON V.visit_id = T.visit_id
Where T.transaction_id IS NULL
GROUP BY V.customer_id;