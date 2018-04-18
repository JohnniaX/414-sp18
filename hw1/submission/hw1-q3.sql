-- CSE 414 HW 1 Question 3
-- Chongyi Xu, 1531273
-- Section AD

-- Insert at least five tuples using the SQL INSERT command five (or more) times. 
-- You should insert at least one restaurant you liked, at least one restaurant 
-- you did not like, and at least one restaurant where you leave the “I like” 
-- field NULL.

INSERT INTO MyRestaurants VALUES 
    ('China First', 
     'Chinese',
     15,
     '2018-04-01',
     1
    );

INSERT INTO MyRestaurants VALUES 
    ('Portage Bay Cafe', 
     'Brunch',
     5,
     '2018-03-20',
     0
    );

INSERT INTO MyRestaurants VALUES 
    ('McDonald''s', 
     'Fast Food',
     25,
     '2018-03-15',
     NULL
    );

INSERT INTO MyRestaurants VALUES 
    ('U:Don', 
     'Japanese',
     25,
     '2018-03-22',
     1
    );

INSERT INTO MyRestaurants VALUES 
    ('Chi Mac', 
     'Korean',
     25,
     '2018-03-10',
     1
    );

INSERT INTO MyRestaurants VALUES 
    ('I See Food', 
     'Cajun',
     20,
     '2018-03-05',
     NULL
    );
