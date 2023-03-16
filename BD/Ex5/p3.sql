CREATE TABLE asignatura (asignaturaid SERIAL PRIMARY KEY, nombre TEXT);

CREATE TABLE matricula (dni TEXT,nombre TEXT, apellido1 TEXT,apellido2 TEXT, asignaturaid INTEGER, FOREIGN KEY (asignaturaid) REFERENCES asignatura(asignaturaid));
