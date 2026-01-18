# SElECT ALL COLUMNS
SELECT * FROM campusx.smartphones_cleaned_v6;

use campusx;
# filter column
SELECT model,price ,rating from smartphones_cleaned_v6;

# filter column
SELECT model,battery_capacity ,os FROM smartphones_cleaned_v6;

# alias 
SELECT os AS "operating system" , model,battery_capacity as MaH FROM smartphones_cleaned_v6;

# Create expression using columns(we have to find ppi value by formula sqrt(width**2 +height**2)
SELECT model,SQRT(resolution_width*resolution_width + resolution_height) as ppi
from smartphones_cleaned_v6;

SELECT model,rating/10 FROM smartphones_cleaned_v6;

# Distinct
select distinct model from smartphones_cleaned_v6
limit 10;

select distinct(brand_name) AS "All Brands" from smartphones_cleaned_v6;

select distinct(processor_brand) as "all processors" 
FROM smartphones_cleaned_v6;

# distinct combination.
SELECT DISTINCT brand_name,processor_brand
FROM smartphones_cleaned_v6;

# filter rows based on where clause.

select * from smartphones_cleaned_v6;

# find all samsumg phones.
select * from smartphones_cleaned_v6
where brand_name = 'samsung'; 

# find all phones with price > 50000
select * from smartphones_cleaned_v6
where price > 50000;

-- BETWEEN
select * from smartphones_cleaned_v6
where price >  10000 AND price > 20000 ;

SELECT * from smartphones_cleaned_v6
WHERE price BETWEEN 10000 AND 20000;

-- find phones with rating > 80 and price < 25000.
select * from smartphones_cleaned_v6
where rating >  80 AND price < 25000;

-- find all samsung phones with ram > 8GB
SELECT  * from smartphones_cleaned_v6
WHERE brand_name = 'samsung' AND ram_capacity > 8;

-- find all samsung phones with snapdragon processor.
SELECT  * from smartphones_cleaned_v6
WHERE brand_name = "samsung" AND processor_brand= 'snapdragon';


-- Query Execution order;
/*
F - from
J - join
W - where
G - group by
H - having 
S - Select 
D - distinct
O - order by
*/

-- find brands who sell phones with price > 50000.
select  distinct brand_name,price from smartphones_cleaned_v6
where price > 100000;

-- in or not in 
SELECT * from smartphones_cleaned_v6
WHERE processor_brand IN("snapdragon","exynos","bionic");

SELECT * from smartphones_cleaned_v6
WHERE processor_brand NOT IN("snapdragon","exynos","bionic");

-- Update
SELECT * FROM smartphones_cleaned_v6
WHERE processor_brand = "helio";

UPDATE smartphones_cleaned_v6
SET processor_brand = "xxxx"
WHERE processor_brand = "helio";

SELECT * FROM smartphones_cleaned_v6
WHERE processor_brand = "xxxx";

UPDATE smartphones_cleaned_v6
SET processor_brand = "helio"
WHERE processor_brand = "xxxx";

-- delete
DELETE FROM smartphones_cleaned_v6
where price > 200000;

DELETE FROM smartphones_cleaned_v6
WHERE primary_camera_rear > 150 AND brand_name = "samsung";

-- Aggregate functions : which gives summary of the data.
SELECT MAX(price) from smartphones_cleaned_v6;
SELECT MIN(price) from smartphones_cleaned_v6;

SELECT max(ram_capacity) from smartphones_cleaned_v6;

-- find the price of costiest samsung phone
SELECT MAX(price) from smartphones_cleaned_v6
WHERE brand_name = "samsung";

SELECT AVG(rating) from smartphones_cleaned_v6
WHERE brand_name = "apple";

SELECT sum(price) from smartphones_cleaned_v6;

SELECT COUNT(*) from smartphones_cleaned_v6
where brand_name = "samsung";

SELECT COUNT(DISTINCT(brand_name)) FROM smartphones_cleaned_v6;

SELECT std(screen_size) FROM smartphones_cleaned_v6;

/* Scalar functions
absolute(ABS)
ROUND
round the ppi to 1 decimal place
CEIL / FLOOR
floor/ ceil the rating
*/
SELECT ABS(100000 - price) as "temp" FROM smartphones_cleaned_v6;

ALTER TABLE smartphones_cleaned_v6
RENAME s;

SELECT CEIL(screen_size) from s;


