# BD: restaurant
# CONSULTAS SQL

#1)	Crear la Base de Datos restaurant, con sus respectivas Tablas, con SQL

#2)	Insertar Registros, con SQL

#3)	Obtener los datos del cliente con NIT: 333

SELECT * FROM cliente WHERE nit=333

#4)	Obtener el nombre y precio, del producto con código: alm

SELECT nombre,precio FROM producto WHERE idp='alm'

#5)	(AVG) Obtener el promedio de precios de los productos

SELECT AVG(precio) FROM producto

#6)	(COUNT) Cuantos clientes se tiene registrado?

SELECT COUNT(*) FROM cliente

#7)	(SUM) Obtener el monto total, por concepto de ventas

SELECT SUM(costo) FROM detalle

#8)	(MAX) Obtener el precio del producto mas caro

SELECT MAX(precio) FROM producto

#9)	(MIN) Obtener el precio del producto mas barato

SELECT MIN(precio) FROM producto

#10)	(BETWEEN) Obtener los nombres y precios de los PRODUCTOS que cuestan entre 5 y 10 Bs

SELECT nombre,precio FROM producto WHERE precio BETWEEN 5 AND 10

#11)	(LIKE) Obtener los productos cuyo nombre empiezan con la letra 'F'

SELECT * FROM producto WHERE nombre LIKE 'F%'

#12)	(LIKE) Obtener los productos cuyo nombre terminan con la letra 'O'

SELECT * FROM producto WHERE nombre LIKE '%O'

#13)	(LIKE) Obtener los productos cuya segunda letra de su nombre sea 'A'  

SELECT * FROM producto WHERE nombre LIKE '_A%'

#14)	(IN) Obtener los clientes cuyo nombre sean: Ana, Delia u Oscar

SELECT * FROM cliente WHERE nombre='Ana' OR nombre='Delia' OR nombre='Oscar' 

SELECT * FROM cliente WHERE nombre IN ('Ana','Delia','Oscar') 

#15)	(ORDER BY...ASC) Mostrar todos los clientes, ordenados alfabéticamente ascendente, por nombre

SELECT * FROM cliente ORDER BY nombre ASC

#16)	(ORDER BY...DESC) Mostrar todos los clientes, ordenados alfabéticamente descendente, por paterno

SELECT * FROM cliente ORDER BY paterno DESC

#17)	(LIMIT) Mostrar los nombres de los 3 productos más caros

SELECT nombre FROM producto ORDER BY precio DESC LIMIT 3

#18)	(DISTINCT) Mostrar los IDs de los productos que son requeridos por los clientes 

SELECT DISTINCT idpro FROM detalle

#19)	(GROUP BY) Obtener el Costo Total de cada una de las ventas (Agrupar por idven en la Tabla detalle y sumar)

SELECT idven , SUM(costo) FROM detalle GROUP BY idven

#20)	(GROUP BY ... HAVING) Obtener los IDs de las ventas que superen los 50 Bs. 

SELECT idven , SUM(costo) FROM detalle GROUP BY idven HAVING SUM(costo) > 50

#21)	(INNER JOIN) Obtener los registros de la tabla venta, con sus respectivos nombres de los clientes

SELECT idv,fecha,idcaj,nombre FROM venta, cliente WHERE idcli=idc  

SELECT idv,fecha,idcaj,nombre FROM venta INNER JOIN cliente ON idcli=idc

#22)	(INNER JOIN) Obtener los registros de la tabla venta, con sus respectivos nombres de los cajeros y clientes

# Solución 1
SELECT idv, fecha, idcaj, cajero.nombre, idcli, cliente.nombre FROM venta
INNER JOIN cajero ON idcaj=id
INNER JOIN cliente ON idcli=idc

# Solución 2
SELECT idv, fecha, idcaj, X.nombre, idcli, Y.nombre FROM venta
INNER JOIN cajero X ON idcaj=id
INNER JOIN cliente Y ON idcli=idc

#23) Mostrar el id y nombre del cliente dado su ID, con todos los productos que ha comprado

SELECT idcli, cliente.nombre, idpro  FROM venta

INNER JOIN cliente ON idcli=idc
INNER JOIN detalle ON idven=idv

WHERE idcli=1

#24) Mostrar el id y nombre del cliente dado su ID,
#    con todos los nombres de productos que ha comprado

SELECT idcli, cliente.nombre, idpro, producto.nombre  FROM venta

INNER JOIN cliente ON idcli=idc
INNER JOIN detalle ON idven=idv
INNER JOIN producto ON idpro=idp

WHERE idcli=1

#25) Mostrar el id y nombre del cliente dado su ID,
#    con todos los nombres de productos que ha comprado (sin repetir)

SELECT DISTINCT idcli, cliente.nombre, idpro, producto.nombre  FROM venta
INNER JOIN cliente ON idcli=idc
INNER JOIN detalle ON idven=idv
INNER JOIN producto ON idpro=idp
WHERE idcli=1

#26) Mostrar el nombre del cliente que realizó la mayor compra (monto) 

# Solución 1 (borrador)
SELECT idven , SUM(costo) as total , nombre
FROM detalle
INNER JOIN venta ON idven=idv
INNER JOIN cliente ON idcli=idc
GROUP BY idven ORDER BY total DESC
LIMIT 1

# Solución final
SELECT nombre FROM detalle
INNER JOIN venta ON idven=idv
INNER JOIN cliente ON idcli=idc
GROUP BY idven ORDER BY SUM(costo) DESC
LIMIT 1

#27) Mostrar el nombre del cliente que mas compras hizo

select idcli, nombre, count(*) AS 'cant'
FROM venta 
INNER JOIN cliente ON idcli=idc
GROUP BY idcli ORDER BY cant DESC LIMIT 1
