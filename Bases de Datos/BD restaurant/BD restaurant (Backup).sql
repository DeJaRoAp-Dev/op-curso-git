# Host: 127.0.0.1  (Version 5.7.24)
# Date: 2021-06-28 14:41:03
# Generator: MySQL-Front 6.1  (Build 1.21)


#
# Structure for table "cajero"
#

DROP TABLE IF EXISTS `cajero`;
CREATE TABLE `cajero` (
  `id` varchar(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `paterno` varchar(20) NOT NULL,
  `materno` varchar(20) DEFAULT NULL,
  `ci` int(11) DEFAULT NULL,
  `fnac` date DEFAULT NULL,
  `telef` int(11) DEFAULT NULL,
  `direc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "cajero"
#

INSERT INTO `cajero` VALUES ('c1','Aldo','Aliaga','Aldana',11,'1990-01-01',1111111,'Alto Chijini'),('c2','Beto','Betancourth','Betanzos',22,'1990-02-02',2222222,'Bella Vista'),('c3','Cesar','Cespedes','Cerrudo',33,'1990-03-03',3333333,'Ceja de El Alto');

#
# Structure for table "cliente"
#

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `paterno` varchar(20) NOT NULL,
  `materno` varchar(20) DEFAULT NULL,
  `nit` int(11) DEFAULT NULL,
  `fnac` date DEFAULT NULL,
  `telef` int(11) DEFAULT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "cliente"
#

INSERT INTO `cliente` VALUES (1,'Ana','Apaza','Aliaga',111,'1980-01-01',11111),(2,'Betty','Benitez','Beltrán',222,'1980-02-02',22222),(3,'Celia','Cesvantes','Céspedes',333,'1980-03-03',33333),(4,'Delia','Delgado','Dembelé',444,'1980-04-04',44444),(5,'Elsa','Estrada','Esquivel',555,'1980-05-05',55555);

#
# Structure for table "producto"
#

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `idp` varchar(5) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` decimal(10,1) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "producto"
#

INSERT INTO `producto` VALUES ('alm','Almuerzo',20.0,50),('caf','Café',5.0,20),('cen','Cena',15.0,50),('coc0','Coca Cola Personal',2.0,10),('coc1','Coca Cola 1 Litro',10.0,10),('fan0','Fanta Personal',2.0,10),('fan1','Fanta 1 Litro',10.0,10),('frut','Frutal 1 Litro',15.0,10),('mat','Mate',5.0,20),('te','Té',5.0,20);

#
# Structure for table "venta"
#

DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `idv` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `idcaj` varchar(3) NOT NULL,
  `idcli` int(11) NOT NULL,
  PRIMARY KEY (`idv`),
  KEY `idcaj` (`idcaj`),
  KEY `idcli` (`idcli`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idcaj`) REFERENCES `cajero` (`id`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`idcli`) REFERENCES `cliente` (`idc`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "venta"
#

INSERT INTO `venta` VALUES (1,'2018-01-01','c1',1),(2,'2018-01-01','c1',2),(3,'2018-01-01','c2',3),(4,'2018-01-02','c1',4),(5,'2018-01-02','c2',5),(6,'2018-02-01','c1',1),(7,'2018-02-02','c2',1);

#
# Structure for table "detalle"
#

DROP TABLE IF EXISTS `detalle`;
CREATE TABLE `detalle` (
  `idd` int(11) NOT NULL AUTO_INCREMENT,
  `idven` int(11) NOT NULL,
  `idpro` varchar(5) NOT NULL,
  `cant` int(11) NOT NULL,
  `costo` decimal(10,1) DEFAULT NULL,
  PRIMARY KEY (`idd`),
  KEY `idven` (`idven`),
  KEY `idpro` (`idpro`),
  CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`idven`) REFERENCES `venta` (`idv`),
  CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`idpro`) REFERENCES `producto` (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "detalle"
#

INSERT INTO `detalle` VALUES (1,1,'alm',1,20.0),(2,1,'coc0',1,2.0),(3,2,'alm',2,40.0),(4,2,'coc1',1,10.0),(5,3,'cen',3,45.0),(6,3,'frut',1,15.0),(7,3,'mat',1,5.0),(8,4,'alm',1,20.0),(9,5,'cen',2,30.0),(10,6,'alm',3,60.0),(11,7,'cen',4,60.0),(12,7,'te',1,5.0),(13,7,'mat',2,10.0),(14,7,'fan0',1,2.0);
