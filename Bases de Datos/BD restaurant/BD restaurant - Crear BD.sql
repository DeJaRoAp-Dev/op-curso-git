# BD: restaurant

CREATE DATABASE restaurant;

USE restaurant;

CREATE TABLE cajero(
  id varchar(3) primary key not null,
  nombre varchar(20) not null,
  paterno varchar(20) not null,
  materno varchar(20),
  ci int,
  fnac date,
  telef int,
  direc varchar(50) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE cliente(
  idc int primary key auto_increment not null,
  nombre varchar(20) not null,
  paterno varchar(20) not null,
  materno varchar(20),
  nit int,
  fnac date,
  telef int
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE producto(
  idp varchar(5) primary key not null,
  nombre varchar(30) not null,
  precio numeric(10,1) not null,
  stock int
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE venta(
  idv int primary key auto_increment not null,
  fecha date not null,
  idcaj varchar(3) not null,
  idcli int not null,
  foreign key (idcaj) references cajero(id),
  foreign key (idcli) references cliente(idc)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE detalle(
  idd int primary key auto_increment not null,
  idven int not null,
  idpro varchar(5) not null,
  cant int not null,
  costo numeric(10,1),
  foreign key (idven) references venta(idv),
  foreign key (idpro) references producto(idp)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
