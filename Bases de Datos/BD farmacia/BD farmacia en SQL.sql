-- SQL
-- ----

-- Crear una Base de Datos: farmacia

CREATE DATABASE farmacia;

-- Usar la BD: farmacia

USE farmacia;

-- Crear la Tabla: medicamentos

CREATE TABLE medicamentos(
idm varchar(5) primary key,
nombre varchar(20) not null,
precio numeric(8,1)
);