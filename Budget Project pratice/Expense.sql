SHOW DATABASES;
USE budget;
show tables;
SELECT * FROM expenses;
INSERT INTO expenses
VALUES (2,'food',"order that food",'2000','2020-02-01');
ALTER TABLE expenses
Drop COLUMN user_id;
ALTER Table expenses
MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
 PRIMARY KEY;
 ALTER TABLE expenses
MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY;

INSERT into expenses
VALUES (5,'pen',"",20,'2020-02-01');
INSERT INTO `expenses`(`id`,`product`,`description`,`amount`,`date`) 
VALUES(7,'MANGO','THIS IS MANGO',500,'2025-05-31 00:02:02');
TRUNCATE expenses;

INSERT INTO expenses (product,description,amount,date)
VALUES ('food',"order that food",'2000','2020-02-01');

SELECT * FROM expenses;