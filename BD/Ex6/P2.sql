--Pregunta 1--
SELECT customers.contact_name, order_id from customers inner join orders ON customers.customer_id = orders.customer_id where orders.order_id = 10360;
--Pregunta 2--
SELECT customers.contact_name, orders.order_id from customers inner join orders ON customers.customer_id = orders.customer_id where orders.order_id in (10360,10253,10440);
--Pregunta 3--
SELECT customers.city, count(orders.order_id) as numero_pedidos from customers inner join orders ON customers.customer_id = orders.customer_id group by customers.city order by numero_pedidos DESC;
--Pregunta 4--
SELECT customers.city, count(orders.order_id) as numero_pedidos from customers inner join orders ON customers.customer_id = orders.customer_id group by customers.city  HAVING count(orders.order_id) > 7 order by numero_pedidos DESC;
--Pregunta 5--
SELECT customers.city, count(orders.order_id) as numero_pedidos from customers inner join orders ON customers.customer_id = orders.customer_id group by customers.city order by numero_pedidos DESC limit 3;
--Pregunta 6--
SELECT concat('El empleado ',employees.first_name,' ',employees.last_name,' realizo ',count(orders.order_id),' pedidos') as informe from employees inner join orders ON employees.employee_id = orders.employee_id group by  employees.first_name, employees.last_name;
--Pregunta 7--
SELECT concat('El empleado ',employees.first_name,' ',employees.last_name,' realizo ',count(orders.order_id),' pedidos') as informe from employees inner join orders ON employees.employee_id = orders.employee_id WHERE employees.first_name like 'M%' group by  employees.first_name,employees.last_name ;
--Pregunta 8--
SELECT orders.order_id,employees.first_name, orders.customer_id from orders inner join employees ON orders.employee_id = employees.employee_id;
--Pregunta 9--
SELECT employees.first_name,orders.customer_id, count(orders.order_id ) from orders inner join employees ON orders.employee_id = employees.employee_id group by employees.first_name,orders.customer_id HAVING count(orders.order_id ) > 1  order by count DESC ;
--Pregunta 10--
SELECT employees.first_name,orders.customer_id, count(orders.order_id ) from orders inner join employees ON orders.employee_id = employees.employee_id  WHERE employees.first_name like 'Margaret' group by employees.first_name,orders.customer_id 
HAVING count(orders.order_id ) > 1  order by count DESC ;



