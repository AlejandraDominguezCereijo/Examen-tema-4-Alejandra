--Pregunta 1--
create or replace function actualiza_viaje(viaje integer, factor integer) RETURNS integer
AS $$
BEGIN
  UPDATE trips SET duration = duration * factor WHERE id = $1;
  return count(*) from trips where start_station = (select start_station from trips where id = $1);
END;
$$ language plpgsql ;

--Pregunta 2--
create or replace function contar_viajes_mes(mes integer, referencia integer) RETURNS integer
AS $$
DECLARE

viajes integer;

BEGIN
  viajes := count(id) from trips where extract(month from start_date) = mes;
IF  (viajes <= referencia * 0.25)
THEN  RAISE NOTICE 'Pocos Viajes';
END IF;

IF (viajes between (referencia * 0.25) AND (referencia * 0.75) )
THEN RAISE NOTICE 'Lo normal';
END IF;

IF (viajes >= referencia * 0.75)
THEN RAISE NOTICE 'Muchos Viajes';
END IF;

return viajes;
END;
$$ language plpgsql ;

--Pregunta 3--
CREATE OR REPLACE FUNCTION borra_y_guarda(id integer) RETURNS void AS $$
BEGIN
    DELETE FROM trips WHERE trip_id = id;
    INSERT INTO viajes_borrados (usuario, viaje, timestamp) VALUES (current_user, id, now());
END;
$$ LANGUAGE plpgsql;

