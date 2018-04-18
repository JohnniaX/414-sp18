-- CSE 414 HW 1 Question 2
-- Chongyi Xu, 1531273
-- Section AD

-- Create a table called MyRestaurants with the following attributes 
-- Name of the restaurant: a varchar field
-- Type of food they make: a varchar field
-- Distance (in minutes) from your house: an int
-- Date of your last visit: a varchar field, interpreted as date
-- Whether you like it or not: an int, interpreted as a Boolean
CREATE TABLE MyRestaurants
    (RestaurantName varchar(20), -- Name of the restaurant
     FoodType varchar(20), -- Type of food they make
     Distance INT, -- Distance from your house in miniutes
     DateLastVisit varchar(10), -- Date of last visit, interpreted as date
     LikeOrNot INT -- Whether like or not, interpreted as boolean 
    ); 
