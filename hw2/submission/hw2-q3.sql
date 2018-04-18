-- CSE 414 HW 2 Question 3
-- Chongyi Xu, 1531273
-- Section AD

-- Find the day of the week with the longest average arrival delay. 
-- Return the name of the day and the average delay. 
-- Name the output columns `day_of_week` and `delay`, in that order. 
-- (Hint: consider using `LIMIT`. Look up what it does!)
SELECT w.day_of_week AS day_of_week, AVG(f.arrival_delay) AS delay
FROM FLIGHTS AS f, WEEKDAYS AS w
WHERE f.day_of_week_id = w.did
GROUP BY f.day_of_week_id
ORDER BY AVG(f.arrival_delay) DESC, w.day_of_week ASC
LIMIT 1;

-- Query result has 1 rows with the largest average arrival delay