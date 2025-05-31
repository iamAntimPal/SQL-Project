--- pizza table ---
show TABLES;
CREATE TABLE orders(
order_id INT NOT NULL,
order_date DATE NOT NULL,
order_time TIME NOT NULL,
primary key(order_id));
SELECT COUNT(*)
FROM pizzahunt.orders;

show TABLES;
use pizzahunt;
SELECT * FROM pizzahunt.order_details;
SELECT * FROM pizzahunt.pizzas;
-- Retrieve the total number of orders placed. --
Select COUNT(orders.order_id)
FROM pizzahunt.orders;
-- Calculate the total revenue generated from pizza sales. --
SELECT * FROM order_details;
SELECT sum(order_details.quantity * pizzas.price) AS Total_Revenue
FROM pizzahunt.orders
JOIN pizzahunt.pizzas ON pizzas.pizza_id = order_details.order_id;
-- Find the average order value. --

-- Identify the highest-priced pizza --
SELECT pizza_types.name, pizzas.price
FROM pizzahunt.pizzas
JOIN pizzahunt.pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;
-- Find the lowest-priced pizza --
SELECT MIN(pizzas.price) AS Lowest_Price
FROM pizzahunt.pizzas;
-- Identify the most common pizza size ordered. --
SELECT pizza_types.name, COUNT(pizza_types.name) AS Count
FROM pizzahunt.pizza_types
GROUP BY pizza_types.name
ORDER BY Count DESC
LIMIT 1;
-- Find the most popular pizza toppings --
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizzahunt.pizza_types
        JOIN
    pizzahunt.pizzas ON pizza_types.pizza_type_id = pizzas.Pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

-- Identify the most common pizza size ordered. --

SELECT 
    pizzahunt.pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzahunt.pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC
LIMIT 1;
-- List the top 5 most ordered pizza types along with their quantities. --
SELECT 
    pizza_types.name, SUM(order_details.quantity) AS quantity
FROM
    pizzahunt.pizza_types
        JOIN
    pizzahunt.pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;