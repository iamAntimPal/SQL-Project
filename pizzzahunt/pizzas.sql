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
