USE zomatodb;

SELECT * FROM restaurants;
SELECT * FROM restaurants WHERE City='Makati City';

SET SQL_SAFE_UPDATES=0;
SELECT * FROM restaurants WHERE Restaurant_Name='Big City Bread Cafe';
UPDATE restaurants SET Has_Table_Booking='YES'  WHERE Restaurant_Name='Big City Bread Cafe';

-- UPDATE --
UPDATE restaurants SET Has_Table_Booking='NO' WHERE Restaurant_Name='Sambo Kojin' ;

-- DELETE--
DELETE FROM restaurants WHERE Restaurant_Name='Big City Bread Cafe';

-- Display single Column in the Table --
SELECT Address FROM restaurants;

-- Select Multiple Columns in the table
SELECT Restaurant_Name,Address FROM restaurants;

-- Gives Other Column name 
SELECT Restaurant_Name AS RName FROM restaurants;

-- Select the names of all the restaurants.
SELECT Restaurant_Name FROM restaurants;

-- Select the cuisines offered by the restaurants.
SELECT Cuisines FROM restaurants;

-- Select the average cost for two at each restaurant.
SELECT Average_Cost_for_two from restaurants;

-- Select the Currency of each restaurant.
SELECT Currency from restaurants;

SELECT * FROM restaurants LIMIT 23;



SELECT * FROM restaurants ORDER BY Average_Cost_for_two ASC;

SELECT COUNT(*) As Total_Restaurants FROM restaurants;

SELECT AVG(Price_range) AS Average_price FROM restaurants;

SELECT SUM(Votes) AS Average_Votes FROM restaurants;

SELECT Restaurant_Name, Cuisines FROM restaurants WHERE Cuisines='Japanes' OR Cuisines= 'Chines';
SELECT Restaurant_Name,Has_Online_delivery FROM restaurants WHERE NOT Has_Online_delivery='YES';
SELECT Restaurant_Name,Cuisines FROM restaurants WHERE Cuisines IN ('Japanes','Chinese','French');

SELECT COUNT(*) AS Total_Restaurant FROM restaurants;
SELECT * FROM restaurants;
SELECT AVG(Average_Cost_for_two) AS Avg_Cost FROM restaurants;
SELECT Restaurant_Name FROM restaurants WHERE Restaurant_Name LIKE 'Las%';
SELECT r.Restaurant_Name,