-- CSE 414 HW 2 Task 1: Import the flight database
-- Chongyi Xu, 1531273
-- Section AD

-- Create the table to store carrier details
CREATE TABLE CARRIERS (
    cid VARCHAR(7) NOT NULL PRIMARY KEY,
    name VARCHAR(83)
);

-- Create the table to store month details
CREATE TABLE MONTHS (
    mid INT NOT NULL PRIMARY KEY,
    month VARCHAR(9)
);

-- Create the table to store week details
CREATE TABLE WEEKDAYS (
    did INT NOT NULL PRIMARY KEY,
    day_of_week VARCHAR(9)
);

-- Create the table to store flight details
CREATE TABLE FLIGHTS (
    fid INT NOT NULL PRIMARY KEY,
    month_id INT,  -- 1-12
    day_of_month INT,    -- 1-31 
    day_of_week_id INT,  -- 1-7, 1 = Monday, 2 = Tuesday, etc
    carrier_id VARCHAR(7),
    flight_num INT,
    origin_city VARCHAR(34), 
    origin_state VARCHAR(47), 
    dest_city VARCHAR(34), 
    dest_state VARCHAR(46), 
    departure_delay INT, -- in mins
    taxi_out INT,        -- in mins
    arrival_delay INT,   -- in mins
    canceled INT,        -- 1 means canceled
    actual_time INT,     -- in mins
    distance INT,        -- in miles
    capacity INT, 
    price INT,           -- in $
    FOREIGN KEY(month_id) REFERENCES MONTHS(mid),
    FOREIGN KEY(day_of_week_id) REFERENCES WEEKDAYS(did),
    FOREIGN KEY(carrier_id) REFERENCES CARRIERS(cid)              
);