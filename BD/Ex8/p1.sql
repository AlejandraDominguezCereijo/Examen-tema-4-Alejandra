--Como indicas en el enunciado ya tienes la base de datos creada, de todas formas este seria el comando en caso de no tenerla, CREATE DATABASE bd_frutas_json;--

--Creamos la tabla frutas--
CREATE TABLE frutas (
  id SERIAL PRIMARY KEY,
  datos JSONB
);

--Añadimos las 5 frutas con sus propiedades, nombre, diametro y origen--
INSERT INTO frutas (datos)
VALUES
  ('{
    "nombre": "Naranja",
    "diametro": 10,
    "origen": "Vigo"
  }'),
  ('{
    "nombre": "Pera",
    "diametro": 8,
    "origen": "Ourense"
  }'),
  ('{
    "nombre": "Manzana",
    "diametro": 6,
    "origen": "Santiago"
  }'),
  ('{
    "nombre": "Fresa",
    "diametro": 2,
    "origen": "Ourense"
  }'),
  ('{
    "nombre": "Uva",
    "diametro": 4,
    "origen": "Vigo"
  }');

--Consulta que muestra las frutas que vienen de Ourense--
SELECT * FROM frutas WHERE datos->>'origen' = 'Ourense';

--Consulta que muestra las frutas que empiezas por la letra N--
SELECT * FROM frutas WHERE datos->>'nombre' LIKE 'N%';