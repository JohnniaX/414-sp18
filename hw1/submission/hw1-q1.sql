-- CSE 414 HW 1 Question 1
-- Chongyi Xu, 1531273
-- Section AD

-- Write a SQL statement to create a table Edges(Source, Destination) where 
-- both Source and Destination are integers.
CREATE TABLE Edges(Source INT,
                   Destination INT);

-- Write a SQL statement to insert the tuples (10,5), (6,25), (1,3), and (4,4)
INSERT INTO Edges VALUES (10, 5);
INSERT INTO Edges VALUES (6, 25);
INSERT INTO Edges VALUES (1, 3);
INSERT INTO Edges VALUES (4, 4);

-- Write a SQL statement that returns all tuples.
-- .header ON;
-- .mode COLUMN;
SELECT * FROM Edges;

-- Write a SQL statement that returns only column Source for all tuples.
SELECT E.Source FROM Edges AS E;

-- Write a SQL statement that returns all tuples where Source > Destination.
SELECT * FROM Edges AS E WHERE E.Source > E.Destination;

--Now insert the tuple ('-1','2000'). Do you get an error? Why? Answer this 
-- as a comment in your file. 
INSERT INTO Edges VALUES ('-1', '2000');
-- This does not give me any error, and when I checked the table, the input
-- text automatically convert to integers. After checking the documentation,
-- I found out that in some cases, the database engine may conveert values
-- between numeric storage classes (INTEGER and REAL) and TEXT during 
-- query execution. (http://www.sqlite.org/datatype3.html)

