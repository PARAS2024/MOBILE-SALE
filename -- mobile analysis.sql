-- mobile analysis
use data ;

--@block
USE data;
SELECT * FROM mobile;


/*


• Q7: 
Q9: write a query which phone support 5g and also top 5 phone with 5g support
Q10: 

*/

-- @block
-- Q1: Check mobile features and price list
SELECT phone_name, price FROM mobile;

-- @BLOCK
-- Q2: Find out the price of 5 most expensive phones

SELECT phone_name, price FROM mobile
ORDER BY Price DESC
LIMIT 5;

-- @block
-- Find out the price of 5 most cheapest phones

SELECT phone_name, price FROM mobile
ORDER BY Price ASC
LIMIT 5;

-- @block
-- List of top 5 Samsung phones with price and all features

SELECT * FROM mobile
WHERE Brands LIKE 'SAMSUNG'
ORDER BY Price DESC
LIMIT 5;

-- @block

-- Q5: Must have android phone list then top 5 High price android phones 

SELECT * FROM mobile
WHERE Operating_System_Type LIKE 'android'
ORDER BY Price DESC
LIMIT 5;

-- @block
-- Must have android phone list then top 5 lower price android phones

SELECT * FROM mobile
WHERE Operating_System_Type LIKE 'android'
ORDER BY Price asc
LIMIT 5;

-- @block

-- Must have IOS phone list then top 5 High price IOS phones

SELECT * FROM mobile
WHERE Operating_System_Type LIKE 'ios'
ORDER BY Price asc
LIMIT 5;

-- @block

-- Must have IOS phone list then top 5 lower price IOS phones

SELECT * FROM mobile
WHERE Operating_System_Type LIKE 'ios'
ORDER BY Price DESC
LIMIT 5;

-- @block
-- write a query which phone support 5g and also top 5 phone with 5g support

SELECT phone_name FROM mobile
WHERE 5G_Availability LIKE 'YES'
ORDER BY Price DESC;

-- @BLOCK

-- Total price of all mobile is to be found with brand name

SELECT Brands, SUM(price) AS TOTAL_PRICE FROM mobile
GROUP BY 1
ORDER BY 2 DESC;