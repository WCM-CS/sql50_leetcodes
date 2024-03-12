'
Write your MySQL query statement below
Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.
'
SELECT author_id as id  //stores author_id as new column id
FROM Views //uses views data table
WHERE author_id LIKE viewer_id //checks for author_id and viewr_id match
GROUP BY id //groups by id aka authopr_id to avoid duplicate author ids in the id column
ORDER BY id ASC; //order by ascendinf ranking