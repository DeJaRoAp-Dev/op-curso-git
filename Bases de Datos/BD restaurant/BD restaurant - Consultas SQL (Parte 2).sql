-- BD: restaurant
-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬

-- CONSULTAS SQL (Parte 2)
-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

USE restaurant;

-- ▬▬▬▬▬▬▬▬▬▬▬
-- █ INNER JOIN
-- ▬▬▬▬▬▬▬▬▬▬▬

-- 1) Mostrar los registros de la tabla venta
--    con sus respectivos nombres de clientes

-- Sol: 1) sin INNER JOIN

SELECT idv, fecha, idcaj, nombre
FROM venta, cliente
WHERE idcli=idc

-- Sol: 2) con INNER JOIN

SELECT idv, fecha, idcaj, nombre
FROM venta
INNER JOIN cliente ON idcli=idc

-- 2) Mostrar las ventas con su respectivo
--    nombre de cajero y nombre de cliente

-- Sol (1)

SELECT idv, fecha, cajero.nombre, cliente.nombre
FROM venta
INNER JOIN cajero ON idcaj=id
INNER JOIN cliente ON idcli=idc

-- Sol (2)

SELECT idv, fecha, C.nombre as 'nomcaj', CL.nombre as 'nomcli'
FROM venta
INNER JOIN cajero C ON idcaj=id
INNER JOIN cliente CL ON idcli=idc


-- 3) Mostrar las fechas de las ventas, con los respectivos
--    nombre de productos vendidos, precio, cantidad y costo total

SELECT fecha, idpro, nombre, precio, cant, costo
FROM venta
INNER JOIN detalle ON idven=idv
INNER JOIN producto ON idp=idpro

-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
-- █ GROUP BY .... HAVING
-- ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

-- 4) Mostrar las cantidades de ventas realizadas en cada fecha

SELECT fecha, COUNT(*) as 'cantidad'
FROM venta
GROUP BY fecha

-- 5) Mostrar el monto total vendido en cada fecha

SELECT fecha, SUM(costo) as 'total'
FROM venta
INNER JOIN  detalle ON idven=idv
GROUP BY fecha

-- 6) [HAVING] Mostrar la fecha de las ventas con monto total mayor a 60 Bs.
--    (en que fechas se ha vendido mayor a 60 Bs)

SELECT fecha, SUM(costo) as 'total'
FROM venta
INNER JOIN  detalle ON idven=idv
GROUP BY fecha
HAVING SUM(costo) > 60

-- 7) Mostrar la fecha en la que se ha vendido mas

SELECT fecha, SUM(costo) as 'total'
FROM venta
INNER JOIN  detalle ON idven=idv
GROUP BY fecha
ORDER BY total DESC
LIMIT 1

-- 8) Mostrar la fecha en la que se ha vendido menos

SELECT fecha, SUM(costo) as 'total'
FROM venta
INNER JOIN  detalle ON idven=idv
GROUP BY fecha
ORDER BY total ASC
LIMIT 1




 








