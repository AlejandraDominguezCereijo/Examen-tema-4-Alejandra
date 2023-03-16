CREATE TABLE persona (idPersona SERIAL PRIMARY KEY, nombre TEXT,dni TEXT);
CREATE TABLE persona (idPersona SERIAL PRIMARY KEY, nombre TEXT,dni TEXT);
CREATE TABLE monumento (idMonumento SERIAL PRIMARY KEY, monumento TEXT, ciudad TEXT, antiguedadMonumento DATE);
CREATE TABLE recuerdos (idRecuerdos SERIAL PRIMARY KEY, idPersona INTEGER, idFoto INTEGER, idMonumento INTEGER,fecha DATE,FOREIGN KEY (idPersona) REFERENCES persona(idPersona), FOREIGN KEY (idFoto) REFERENCES foto (idFoto), FOREIGN KEY (idMonumento) REFERENCES monumento (idMonumento));