--Pregunta 1--
SELECT round(random() * (30 - 5) + 5)::integer as aleatorio;
--Pregunta 2--
SELECT power(4, 5);
--Pregunta 3--
CREATE SEQUENCE seq_01 INCREMENT BY 2 START WITH 0;
--Pregunta 4--
SELECT currval('seq_01');
SELECT NEXTval('seq_01');
--Pregunta 5--
SELECT DATE_TRUNC('hour', CURRENT_DATE + INTERVAL '3 days') + INTERVAL '12 hours' AS fecha_y_hora;
--Pregunta 6--
SELECT EXTRACT(hour FROM '08:45'::time - '07:30'::time) AS horas,
EXTRACT(minute FROM '08:45'::time - '07:30'::time) AS minutos;
--Pregunta 7--
SELECT EXTRACT(SECOND FROM TIMESTAMP '2001-02-16 20:38:40') AS segundos;
--Pregunta 8--
SELECT 'Hola, me llamo ' || 'Pepe';
--Pregunta 9--
SELECT replace(replace('Hola soy Pepe', 'o', ''), 'e', '');

