'
# Write your MySQL query statement below
Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
'

SELECT P.product_name, S.year, S.price
FROM Sales as S
LEFT JOIN Product as P
ON S.product_id = P.product_id
ORDER BY P.product_name DESC;