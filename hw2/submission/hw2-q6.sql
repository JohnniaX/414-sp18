-- CSE 414 HW 2 Question 6
-- Chongyi Xu, 1531273
-- Section AD

/* Find the maximum price of tickets between Seattle and New York, NY.
Show the maximum price for each airline separately. */
SELECT c.name AS carrier, MAX(price) AS max_price
FROM FLIGHTS AS f, CARRIERS as c
WHERE f.carrier_id=c.cid AND 
((f.origin_city='Seattle WA' AND f.dest_city='New York NY') OR 
(f.origin_city='New York NY' AND f.dest_city='Seattle WA'))
GROUP BY c.name;

-- Result Query has 3 rows
