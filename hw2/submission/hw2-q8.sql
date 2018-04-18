-- CSE 414 HW 2 Question 8
-- Chongyi Xu, 1531273
-- Section AD

-- Compute the total departure delay of each airline across all flights.
SELECT c.name AS name, SUM(departure_delay) AS delay
FROM FLIGHTS AS f, CARRIERS AS c
WHERE f.carrier_id=c.cid
GROUP BY c.name;

-- Result Query has 22 rows.