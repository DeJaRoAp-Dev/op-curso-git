-- ------------------------
-- BASE DE DATOS: universidad
-- ------------------------

-- ■ Crear BD universidad

CREATE DATABASE universidad;

-- ■ Usar la BD universidad

USE universidad;

-- ■ CREAR las Tablas

CREATE TABLE estudiantes(
ide VARCHAR(5) PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
fechanac date,
telef varchar(15)
);


CREATE TABLE carreras(
idc VARCHAR(5) PRIMARY KEY NOT NULL,
nombre VARCHAR(20) NOT NULL
);

CREATE TABLE inscripcion(
idi INT PRIMARY KEY AUTO_INCREMENT,
fecha DATE,
idest VARCHAR(5) NOT NULL,
idcar VARCHAR(5) NOT NULL,
FOREIGN KEY (idest) REFERENCES estudiantes(ide),
FOREIGN KEY (idcar) REFERENCES carreras(idc)
);
