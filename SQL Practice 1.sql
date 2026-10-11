show databases;
use xyz;

create table customers(
customer_id INT PRIMARY KEY,
name VARCHAR(100),
city VARCHAR(100),
gender VARCHAR(10),
age INT,
category VARCHAR(50),
purchase_amount DECIMAL(10,2),
last_purchase DATE,
payment_method VARCHAR(50));

INSERT INTO customers (customer_id, name, city, gender, age, category, purchase_amount, last_purchase, payment_method) VALUES
(1, 'Amit', 'Pune', 'Male', 28, 'Regular', 15000, '2025-01-02', 'UPI'),
(2, 'Neha', 'Mumbai', 'Female', 24, 'Premium', 22000, '2025-01-08', 'Credit Card'),
(3, 'Rahul', 'Pune', 'Male', 32, 'Regular', 10000, '2025-02-12', 'Cash'),
(4, 'Priya', 'Delhi', 'Female', 27, 'Premium', 18000, '2025-02-10', 'UPI'),
(5, 'Suresh', 'Mumbai', 'Male', 35, 'VIP', 30000, '2025-01-15', 'Debit Card'),
(6, 'Vijay', 'Pune', 'Male', 30, 'Regular', 25000, '2025-01-20', 'UPI'),
(7, 'Kajal', 'Delhi', 'Female', 23, 'Regular', 12000, '2025-03-01', 'Cash'),
(8, 'Rohan', 'Mumbai', 'Male', 40, 'Premium', 27000, '2025-03-10', 'Credit Card'),
(9, 'Ritika', 'Bangalore', 'Female', 29, 'VIP', 45000, '2025-02-18', 'UPI'),
(10,'Zaid', 'Bangalore', 'Male', 26, 'Regular', 9000, '2025-01-30', 'Debit Card'),
(11,'Meera', 'Chennai', 'Female', 31, 'Premium', 21000, '2025-03-05', 'Credit Card'),
(12,'Anil', 'Chennai', 'Male', 33, 'Regular', 17000, '2025-03-12', 'UPI'),
(13,'Sneha', 'Pune', 'Female', 25, 'VIP', 38000, '2025-03-19', 'UPI'),
(14,'Sarita','Mumbai','Female', 38, 'Premium', 26000, '2025-03-22', 'Debit Card'),
(15,'Dev', 'Delhi', 'Male', 29, 'VIP', 50000, '2025-03-25', 'Credit Card');

select * from customers;
-- 1. Find top 5 customers by total purchase amount.
select name,sum(purchase_amount) from customers
group by name ,purchase_amount
ORDER BY purchase_amount DESc
limit 5
;
-- 2. List cities with total purchase amount > 30,000.
select city  from customers
where purchase_amount > 30000;

-- 3. Find number of customers per city, ordered by highest to lowest.
select city,sum(customer_id) from customers
group by city
order by sum(customer_id) desc;

select * from customers;
-- 4. Find category-wise average purchase amount and return only those where average > 20,000.
select category,avg(purchase_amount) as average
from customers
group by category
having average > 20000;

-- 5. Return payment methods ranked by count of usage, limited to top 3.
select payment_method,count(payment_method) from customers
group by payment_method
order by count(payment_method) DESC
limit 3;

-- 6. Show cities where number of female customers > male customers.
select city ,count(city) from customers
where gender = 'female' > 'male'
group by city,gender;

-- 7. Find categories with more than 3 VIP customers.
select category ,count(*) as count from customers
where category = "VIP" 
group by category
having count(*) >3 ;

select * from customers;
-- 8. Show age group (20–30, 30–40, etc.) with highest average purchases.
SELECT 
    CASE 
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END AS age_group,
    AVG(purchase_amount) AS avg_purchase
FROM customers
GROUP BY age_group
ORDER BY avg_purchase DESC;

select * from customers;
-- 9. Find city-wise highest purchase amount (limit one per city).
select city ,max(purchase_amount) as amount from customers
group by city ;

-- 10. Return age groups with total purchase > 100,000.
SELECT
    CASE
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END AS age_group,
    SUM(purchase_amount) AS total_purchase
FROM customers
GROUP BY age_group
HAVING SUM(purchase_amount) > 100000;

-- 11. Find gender with highest contribution to total revenue.
select gender ,sum(purchase_amount) as amount from customers
group by gender
order by amount DESC
limit  1;

-- 12. List categories where minimum purchase amount > 15,000.
SELECT category, MIN(purchase_amount) AS min_purchase
FROM customers
GROUP BY category
HAVING MIN(purchase_amount) > 15000;

-- 13. Show customers with more than 2 transactions.
select customer_ id ,count(*) from customers
group by customer_id
having count(*) > 2;

SELECT customer_id, COUNT(*) AS total_transactions
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 2;

-- 14. Find cities having maximum count of premium category customers.
-- 15. Find average age of customers grouped by category.
-- 16. Show categories with total customers > 5 sorted descending.
-- 17. Return top 5 cities by revenue from credit card payments.
-- 18. Find cities where UPI payment revenue > non-UPI payment revenue.
-- 19. Find gender-wise purchase contribution per city with HAVING > 40,000.
-- 20. List cities where VIP customer purchase > premium customer purchase.
-- 21. Find categories where the oldest customer purchased the most.
-- 22. Return payment methods with avg purchase amount > overall avg purchase amount.
-- 23. Show top 3 categories by customer count, ordering desc.
-- 24. Find cities with more than 2 categories present.
-- 25. Find categories where sum(purchase_amount) / count(customers) > 20,000.
-- 26. Return customers who purchased using at least 2 different payment methods.
-- 27. Find cities where female customers spend more than male customers.
-- 28. List categories where the youngest customer is from Pune.
-- 29. Find cities where average age < 30 and total purchase > 100,000.
-- 30. Show payment methods used by customers older than 30 sorted by usage.
-- 31. Find cities having more than 3 VIP or premium customers combined.
-- 32. Show categories with highest median purchase amount.
-- 33. Find top 5 customers from Mumbai by purchase amount.
-- 34. Return month-wise spend using last_purchase ordered descending.
-- 35. Show categories where debit card usage is higher than credit card.
-- 36. Find cities where category diversity (count distinct categories) > 3.
-- 37. Return gender-wise total purchases sorted by highest revenue.
-- 38. Find categories with more than 50% female customers.
-- 39. List cities whose highest purchase transaction > 40,000.
-- 40. Find payment methods where total purchase from customers aged 20–30 > 50,000.
-- 41. Show categories with the lowest average age, limit top 3.
-- 42. Find cities where more than 40% purchases come from VIP category.
-- 43. Show categories where minimum age > overall minimum age.
-- 44. Return customers where purchase_amount > city average purchase.
-- 45. Find payment methods that generate less revenue than UPI.
-- 46. Show female customers older than 25 contributing top 3 revenue values.
-- 47. Find customers where purchase_amount > 90th percentile.
-- 48. List cities where total revenue rank is within top 3.
-- 49. Show category-wise standard deviation of purchase_amount and sort desc.
-- 50. Find top spending customer per category (limit one per category).
















