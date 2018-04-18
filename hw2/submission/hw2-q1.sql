-- CSE 414 HW 2 Question 1
-- Chongyi Xu, 1531273
-- Section AD

--  List the distinct flight numbers of all flights from Seattle to Boston 
-- by Alaska Airlines Inc. on Mondays. Also notice that, in the database, 
-- the city names include the state. So Seattle appears as Seattle WA.
SELECT DISTINCT f.flight_num AS flight_num
FROM FLIGHTS AS f, CARRIERS AS c, WEEKDAYS AS w
WHERE c.name='Alaska Airlines Inc.' AND f.origin_city='Seattle WA' 
AND f.dest_city='Boston MA' AND w.day_of_week='Monday'
AND f.carrier_id=c.cid AND f.day_of_week_id=w.did;

-- Query result has 3 rows

