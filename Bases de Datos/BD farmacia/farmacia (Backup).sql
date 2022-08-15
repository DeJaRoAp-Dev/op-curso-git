# Host: localhost  (Version 5.7.33)
# Date: 2022-01-27 20:07:37
# Generator: MySQL-Front 6.1  (Build 1.21)


#
# Structure for table "medicamentos"
#

CREATE TABLE `medicamentos` (
  `idm` varchar(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` decimal(8,1) DEFAULT NULL,
  PRIMARY KEY (`idm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "medicamentos"
#

INSERT INTO `medicamentos` VALUES ('m1','Tapsin',4.0),('m2','Vitagrip',5.0),('m3','Mentizan',10.0),('m4','Dolorsan',19.0),('m5','Chaquitap',2.0);
