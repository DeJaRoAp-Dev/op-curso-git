# BD: restaurant
# Registros

USE restaurant;

# TABLA: cajero
INSERT INTO cajero values ('c1','Aldo','Aliaga','Aldana',11,'1990/01/01',1111111,'Alto Chijini');
INSERT INTO cajero values ('c2','Beto','Betancourth','Betanzos',22,'1990/02/02',2222222,'Bella Vista');
INSERT INTO cajero values ('c3','Cesar','Cespedes','Cerrudo',33,'1990/03/03',3333333,'Ceja de El Alto');

# TABLA: cliente
INSERT INTO cliente(nombre,paterno,materno,nit,fnac,telef)
values ('Ana','Apaza','Aliaga',111,'1980/01/01',11111);
INSERT INTO cliente(nombre,paterno,materno,nit,fnac,telef)
values ('Betty','Benitez','Beltrán',222,'1980/02/02',22222);
INSERT INTO cliente(nombre,paterno,materno,nit,fnac,telef)
values ('Celia','Cesvantes','Céspedes',333,'1980/03/03',33333);
INSERT INTO cliente(nombre,paterno,materno,nit,fnac,telef)
values ('Delia','Delgado','Dembelé',444,'1980/04/04',44444);
INSERT INTO cliente(nombre,paterno,materno,nit,fnac,telef)
values ('Elsa','Estrada','Esquivel',555,'1980/05/05',55555);

#TABLA: producto
INSERT INTO producto values ('alm','Almuerzo',20,50);
INSERT INTO producto values ('caf','Café',5,20);
INSERT INTO producto values ('cen','Cena',15,50);
INSERT INTO producto values ('coc0','Coca Cola Personal',2,10);
INSERT INTO producto values ('coc1','Coca Cola 1 Litro',10,10);
INSERT INTO producto values ('fan0','Fanta Personal',2,10);
INSERT INTO producto values ('fan1','Fanta 1 Litro',10,10);
INSERT INTO producto values ('frut','Frutal 1 Litro',15,10);
INSERT INTO producto values ('mat','Mate',5,20);
INSERT INTO producto values ('te','Té',5,20);

#TABLA: venta
INSERT INTO venta(fecha,idcaj,idcli) values ('2018/01/01','c1',1);
INSERT INTO venta(fecha,idcaj,idcli) values ('2018/01/01','c1',2);
INSERT INTO venta(fecha,idcaj,idcli) values ('2018/01/01','c2',3);
INSERT INTO venta(fecha,idcaj,idcli) values ('2018/01/02','c1',4);
INSERT INTO venta(fecha,idcaj,idcli) values ('2018/01/02','c2',5);
INSERT INTO venta(fecha,idcaj,idcli) values ('2018/02/01','c1',1);
INSERT INTO venta(fecha,idcaj,idcli) values ('2018/02/02','c2',1);

#TABLA: detalle
INSERT INTO detalle(idven,idpro,cant,costo) values (1,'alm',1,20);
INSERT INTO detalle(idven,idpro,cant,costo) values (1,'coc0',1,2);
INSERT INTO detalle(idven,idpro,cant,costo) values (2,'alm',2,40);
INSERT INTO detalle(idven,idpro,cant,costo) values (2,'coc1',1,10);
INSERT INTO detalle(idven,idpro,cant,costo) values (3,'cen',3,45);
INSERT INTO detalle(idven,idpro,cant,costo) values (3,'frut',1,15);
INSERT INTO detalle(idven,idpro,cant,costo) values (3,'mat',1,5);
INSERT INTO detalle(idven,idpro,cant,costo) values (4,'alm',1,20);
INSERT INTO detalle(idven,idpro,cant,costo) values (5,'cen',2,30);
INSERT INTO detalle(idven,idpro,cant,costo) values (6,'alm',3,60);
INSERT INTO detalle(idven,idpro,cant,costo) values (7,'cen',4,60);
INSERT INTO detalle(idven,idpro,cant,costo) values (7,'te',1,5);
INSERT INTO detalle(idven,idpro,cant,costo) values (7,'mat',2,10);
INSERT INTO detalle(idven,idpro,cant,costo) values (7,'fan0',1,2);