--Pregunta 1--
SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM orders;
--Pregunta 2--
SELECT count(CUSTOMER_id) as Clientes FROM customers;
--Pregunta 3--
SELECT count(order_id) as Pedidos FROM orders;
--Pregunta 4--
SELECT contact_name, CITY FROM customers WHERE city = 'London' and contact_name LIKE 'A%';
--Pregunta 5--
SELECT count(customer_id) from customers WHERE city = 'London';
--Pregunta 6--
SELECT city, count(customer_id) as Total_Clientes from customers group by city order by Total_Clientes desc;
--Pregunta 7--
SELECT count(employee_id) as Empleados,last_name,first_name from employees  where birth_date >'1965-06-01'  group by employee_id,last_name,first_name ;
--Pregunta 8--
SELECT concat('El empleado ',first_name,' ',last_name,', nacio el ',birth_date) as informe from employees;
--Pregunta 9--
SELECT concat('El empleado ',first_name,' ',last_name,' con ID ', employee_id ,', nacio el ',birth_date) as informe from employees 
where employee_id in (8,7,3,10);
--Pregunta 10--
SELECT country , count(customer_id) as total FROM customers GROUP BY country HAVING count(customer_id) >5  ORDER BY country;
