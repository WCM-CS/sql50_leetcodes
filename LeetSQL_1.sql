'
Write your MySQL query statement below
Write a solution to find the ids of products that are both low fat and recyclable.
'

SELECT product_id 
FROM Products 
WHERE UPPER(low_fats) = 'Y' AND UPPER(recyclable) = 'Y';