-- SQL
-- COMANDOS DML
-- "Lenguaje de Manipulación de Datos"
-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

-- Usar una BD
USE farmacia;


-- ■ INSERT (Para insertar registros)

-- Insertar registros en la tabla: medicamentos

INSERT INTO medicamentos
VALUES ('m1', 'Tapsin', 5);

INSERT INTO medicamentos
VALUES ('m2', 'Vitagrip', 10);

INSERT INTO medicamentos (idm, nombre) 
VALUES ('m3', 'Mentizan');

INSERT INTO medicamentos (nombre, idm) 
VALUES ('Dolorsan', 'm4');

-- ■ UPDATE (Para modificar registros)

-- Modificar el precio del medicamento
-- 'm4' con 20 Bs

UPDATE medicamentos SET precio=20
WHERE idm='m4'

-- Rebajar 1 Bs al precio de todos los medicamentos

UPDATE medicamentos SET precio=precio-1

-- ■ DELETE (Para eliminar registros)

-- Eliminar el medicamento con id 'm3'

DELETE FROM medicamentos
WHERE idm='m3'

-- Eliminar los medicamentos con precio 10

DELETE FROM medicamentos
WHERE precio=10

-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
-- ■ COMANDOS: SELECT - FROM - WHERE
-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

-- Mostrar todos los medicamentos

SELECT * FROM medicamentos

-- Mostrar los nombres y precios de los medicamentos

SELECT nombre, precio FROM medicamentos

-- Mostrar el medicamento cuyo id es m2

SELECT * FROM medicamentos
WHERE idm='m2'








