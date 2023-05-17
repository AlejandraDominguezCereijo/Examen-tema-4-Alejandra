--Pregunta 1--
CREATE OR REPLACE FUNCTION act_duration_t() RETURNS trigger AS
$$
BEGIN
  IF NEW.duration < 20
  THEN NEW.duration :=20;
  END IF;
  RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER actualizar_duracion
BEFORE INSERT ON trips
FOR EACH ROW
EXECUTE FUNCTION act_duration_t();

--Pregunta 2--
CREATE OR REPLACE FUNCTION check_municipio_t() RETURNS trigger AS
$$
BEGIN
IF (NEW.municipality  IN (select distinct municipality from stations))
        THEN
        RAISE NOTICE 'Ese municipio ya existe';
        ELSE
        RAISE EXCEPTION 'Ese municipio no existe';
        END IF;
        RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER check_municipio_trigger
BEFORE UPDATE ON stations
FOR EACH ROW
EXECUTE FUNCTION check_municipio_t();
