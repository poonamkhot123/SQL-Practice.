use campusx;

select * from s;

-- 1.find top 5 samsung phones with biggest screen size.
select model,screen_size from s
where brand_name = 'samsung' 
order by screen_size DESC
LIMIT 5;


-- 2.sort all the phones with in decending order of number of total cameras.
select model,(num_rear_cameras + num_front_cameras) as camera 
 from s 
 order by camera DESC;

-- 3. sort data on the basis of ppi in decending order.
SELECT model,
ROUND(SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size) as ppi
from s
order by ppi DESC;

-- 4.find the phone with 2nd largest battery
SELECT  model,battery_capacity 
from s
order by battery_capacity DESC
LIMIT 1,1;

--  5.find the phone with 2nd lowest battery
SELECT  model,battery_capacity 
from s
order by battery_capacity ASC
LIMIT 1,1;

-- 6.find the name and rating of the worst rated apple phone
select model ,rating from s
where brand_name = 'apple'
order by rating ASC
limit 1;

-- 7. sort phones alphabetically and then on the basis of rating in desc order.
select brand_name ,rating
from s
order by brand_name ASC
,rating  asc;

-- 8.sort phones alphabetically and then on the basis of price in asc order.
select brand_name ,rating
from s
order by brand_name ASC,price  asc;

# Group by
-- 1.Group smartphone by brand and get the count,average price,
-- max rating,avg screeen size and avg battery size.
select brand_name, count(*) as count ,
round(avg(price),2) as avg ,
max(rating) as rating ,
round(avg(screen_size),2) as size ,
round(avg(battery_capacity),2) as capacity
from s
group by brand_name  
limit 15;

-- 2. Group smartphones by whether they have an NFC and get the average price and rating .
select has_nfc ,
round(avg(price)) as avgerage ,
round(avg(rating),2) as rating
from s
group by has_nfc;

-- 3.group smartphone by the extended memory available and get the average price.
select extended_memory_available ,
round(avg(price)) as avgerage ,
round(avg(rating),2) as rating
from s
group by extended_memory_available;

-- 4.Group smartphones by the brand and processor brand and get the count of models
--  and the average camera resolution(rear).
select brand_name ,processor_brand ,
count(model) ,
avg(resolution_width)
from s
group by brand_name,processor_brand;

select * from s;

-- find the top 5 most costly phonr brand.
select brand_name ,avg(price) as average from s
group by brand_name 
order by average DESC
limit 5;


-- Which brand makes the smallest screen smartphone.
select brand_name, avg(screen_size) AS average from s
group by brand_name
order by average ASC
limit 1;

-- AVG price of 5G phones Vs avg price non 5G phones.
select has_5g,avg(price) from s
group by has_5g;

-- group smartphones by the brand , and find the brand with the higest number of models
-- than have nfc and an IR blaster.
select brand_name ,count(*) as "count"
from s
where has_nfc = "True" and has_ir_blaster = "True"
group by brand_name
order by count DESC LIMIT 1;

-- find all samsung 5g enabled smartphones and 
-- find out the avg price for NFC and Non-NFC phones.
select  has_5g,has_nfc,
avg(price) as average from s
where brand_name = "samsung" 
group by has_5g,has_nfc;

select * from s;

-- find the phone name,price of the costiest phone.
select brand_name,price from s
order by price desc
limit 1;

### HAVING CLAUSE

-- find the avg rating of smartphone brands which have more than 20 phones.
select brand_name,count(*) as 'count',
round(avg(price)) as 'avg_price'
from s
group by brand_name
having count > 20
order by avg_price desc;

-- find the top 3 brands with the highest avg ram that have a refresh
-- rate of at least 90 hz and 
-- fast charging available and dont consider brands which have less than 10 phones.

select brand_name ,
avg(ram_capacity) as capacity 
from s
where refresh_rate > 90 and fast_charging_available = 1
group by brand_name
having count(brand_name) > 5
order by capacity DESC
limit 3;



-- find the avg price of all the phone brands with avg rating > 70 and num_phones
-- more than 10 among all 5G enabled phone.
select brand_name ,avg(price) as 'average' from s
where has_5g = 'True'
group by brand_name
having avg(rating) > 70 AND  count(*) > 10;
























