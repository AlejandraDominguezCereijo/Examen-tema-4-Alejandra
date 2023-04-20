--Pregunta 1--
SELECT product_id, product_name,unit_price FROM products where unit_price = (SELECT min(unit_price) from products);
--Pregunta 2--
SELECT * FROM products where  unit_price >=(SELECT min(quantity) FROM order_details)*10;
--Pregunta 3--
SELECT product_name FROM products where unit_price > (SELECT max(unit_price) from products where product_id IN (3,6,9,10));
--Pregunta 4--
SELECT product_name,product_id FROM products WHERE product_id = any (SELECT shipper_id from shippers );
--Pregunta 5--
SELECT customer_id, contact_name,city from customers where city = any (SELECT city from suppliers );