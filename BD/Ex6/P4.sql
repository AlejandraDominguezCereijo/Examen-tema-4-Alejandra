--Pregunta 1--
SELECT start_station FROM TRIPS where start_station is null;
--Pregunta 2--
UPDATE trips set start_station = end_station where start_station is null;
--Pregunta 3--
ALTER TABLE trips alter column start_station set not null;
--De esta manera hacemos que la columna no pueda esta null , quise hacer este comando para que fuera mas completo 'ALTER TABLE trips alter column start_station set not null default end_station;' para que de esta manera se pusiera por defecto el valor que salga en end_station pero me daba fallo--
--Pregunta 4--
DELETE from trips where birth_date is null;
--Pregunta 5--
UPDATE trips set bike_number = 'B00000' where bike_number is null;