-- CSE 414 HW 2 Question 5
-- Chongyi Xu, 1531273
-- Section AD

/* Find all airlines that had more than 0.5 percent of their flights out of 
Seattle be canceled. Return the name of the airline and the percentage of
canceled flight out of Seattle. Order the results by the percentage of 
canceled flights in ascending order.*/
SELECT c.name AS name, (SUM(f.canceled)*100.0/COUNT(*)) AS percent
FROM FLIGHTS AS f, CARRIERS AS c
WHERE f.carrier_id=c.cid AND f.origin_city='Seattle WA'
GROUP BY c.name
HAVING percent > 0.5
ORDER BY percent ASC;

-- Note: 100.0 will cast the sum to double.
-- Query result has 6 rows.