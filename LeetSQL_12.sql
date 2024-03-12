'# Write your MySQL query statement below
Write a solution to find the number of times each student attended each exam.
Return the result table ordered by student_id and subject_name.
'
SELECT 
    S.student_id, 
    S.student_name, 
    SU.subject_name, 
    COUNT(E.subject_name) as attended_exams
FROM 
    Students as S
CROSS JOIN
    Subjects as SU
LEFT JOIN 
    Examinations as E ON S.student_id = E.student_id and SU.subject_name = E.subject_name
GROUP BY 
    S.student_id, SU.subject_name
ORDER BY
    S.student_id, SU.subject_name;