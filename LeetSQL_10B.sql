'# Write your MySQL query statement below
There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.
The time to complete a process is the end timestamp minus the start timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.
The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.'

SELECT
    machine_id,
    ROUND(SUM(IF(activity_type = 'start', -timestamp, timestamp)) / COUNT(DISTINCT process_id), 3) AS processing_time
FROM Activity
GROUP BY machine_id 