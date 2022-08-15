-- SQL
-- BD: farmacia
-- "CONSULTAS Y REPORTES"
-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

USE farmacia;

-- 1) Mostrar los nombres de todos los medicamentos

SELECT nombre FROM medicamentos

-- ■ Funciones de agregado(SUM,AVG,MAX,MIN,COUNT)

-- 2) Sumar todos los precios de los medicamentos

SELECT SUM(precio) FROM medicamentos

-- 3) Mostrar el promedio de precios de los medicamentos

SELECT AVG(precio) FROM medicamentos

-- 4) Mostrar el precio del medicamento mas caro

SELECT MAX(precio) FROM medicamentos

-- 5) Mostrar el precio del medicamento mas barato

SELECT MIN(precio) FROM medicamentos

-- 6) Mostrar la cantidad de registros de medicamentos que se tiene

SELECT COUNT(*) FROM medicamentos

-- 7) Mostrar la cantidad de medicamentos que cuestan arriba de 5 Bs

SELECT COUNT(*) FROM medicamentos WHERE precio>5

-- ■ ORDER BY (ASC=Ascendente  DESC=Descendente)
--   Para ordenar registros

-- 8) Mostrar los medicamentos ordenados por
--    nombre, ascendentemente

SELECT * FROM medicamentos ORDER BY nombre ASC

-- 9) Mostrar los medicamentos ordenados por
--    nombre, descendentemente

SELECT * FROM medicamentos ORDER BY nombre DESC

-- 10) Mostrar los medicamentos ordenados por
--    precio, ascendentemente

SELECT * FROM medicamentos ORDER BY precio

-- ■ BETWEEN (para rango o intervalos)

-- 11) Mostrar los medicamentos que cuestan
--     entre 5 y 15 Bs

-- Sol 1
SELECT * FROM medicamentos
WHERE precio>=5 AND precio<=15

-- Sol 2 (usando Between)
SELECT * FROM medicamentos
WHERE precio BETWEEN 5 AND 15 

-- ■ IN  (para comparar con un conjunto de datos)

-- 12) Mostrar los medicamentos que cuestan
--     2 ó 5 ó 10 Bs

-- Sol 1
SELECT * FROM medicamentos
WHERE precio=2 OR precio=5 OR precio=10

-- Sol 2
SELECT * FROM medicamentos
WHERE precio IN (2,5,10)

-- 13) Mostrar los medicamentos que no cuestan
--     ni 2 ni 5 ni 10 Bs

SELECT * FROM medicamentos
WHERE precio NOT IN (2,5,10)

-- ■ LIKE (% 0 ó más caracteres • _ un caracter)
--   Para búsqueda de datos

-- 14) Mostrar todos los medicamentos
--     cuyo nombre empieza con la letra 'M'

SELECT * FROM medicamentos
WHERE nombre LIKE 'M%'

-- 15) Mostrar todos los medicamentos
--     cuyo nombre termina en 'AN'

SELECT * FROM medicamentos
WHERE nombre LIKE '%AN'

-- 16) Mostrar todos los medicamentos
--     cuyo nombre contiene la palabra 'TA'

SELECT * FROM medicamentos
WHERE nombre LIKE '%TA%'

-- 17) Mostrar todos los medicamentos
--     cuyo 5to caracter es la letra 'I'

SELECT * FROM medicamentos
WHERE nombre LIKE '____I%'



 





















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








