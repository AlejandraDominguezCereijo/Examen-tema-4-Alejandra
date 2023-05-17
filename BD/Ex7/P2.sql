--Pregunta 1--
CREATE FUNCTION suma_multip(x integer, y integer, z integer)
RETURNS integer AS
$$
SELECT (x + y) * z;
$$
LANGUAGE SQL;

--Pregunta 2--
CREATE or REPLACE PROCEDURE corregir_codigo_bicis(antes varchar(6), ahora varchar(6))
LANGUAGE SQL AS
$$
UPDATE trips SET bike_number = ahora WHERE bike_number like antes;
$$ ;

--Pregunta 3--
create or replace function duracion_viaje(viaje integer, modo char(1))
RETURNS numeric(6,2) AS
$$
select
CASE
  WHEN modo = 'M'  THEN (duration / 60)::numeric(6,2)
  WHEN modo = 'H' THEN (duration / 60 / 60)::numeric(6,2)
END
FROM trips where id = viaje
$$
LANGUAGE SQL ;

