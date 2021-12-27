create database proyecto_clase;
drop database proyecto_clase;

use proyecto_clase;


--- Tablas reales

create table if not exists usuario (
	id int primary key not null,
	usuario varchar(30),
	contrasena varchar(200)
);

CREATE TABLE Banco(
    banco int not null AUTO_INCREMENT,
    nombre varchar(100) not null,
    PRIMARY KEY(banco)
);

CREATE TABLE Rubro(
    rubro int not null,
    nombre varchar(45) not null,
    PRIMARY KEY(rubro)
);

CREATE TABLE Mes(
    mes int not null AUTO_INCREMENT,
    nombre varchar(45) not null,
    PRIMARY KEY(mes)
);

CREATE TABLE Banco_Rubro(
    banco_rubro int not null AUTO_INCREMENT,
    cantidad int not null,
    banco int not null,
    rubro int not null,
    mes int not null,
    PRIMARY KEY(banco_rubro),
    CONSTRAINT fk_banco FOREIGN KEY(banco) REFERENCES Banco(banco) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_rubro FOREIGN KEY(rubro) REFERENCES Rubro(rubro) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_mes FOREIGN KEY(mes) REFERENCES Mes(mes) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Mes(nombre) values('Noviembre');
INSERT INTO Mes(nombre) values('Diciembre');
INSERT INTO Mes(nombre) values('Enero');
INSERT INTO Mes(nombre) values('Febrero');
INSERT INTO Mes(nombre) values('Marzo');
INSERT INTO Mes(nombre) values('Abril');
INSERT INTO Mes(nombre) values('Mayo');
INSERT INTO Mes(nombre) values('Junio');
INSERT INTO Mes(nombre) values('Julio');
INSERT INTO Mes(nombre) values('Agosto');
INSERT INTO Mes(nombre) values('Septiembre');
INSERT INTO Mes(nombre) values('Octubre');
select * from Mes;

-- INSERTAR RUBRO
INSERT INTO Rubro(rubro,nombre) values(1,'Activo');
INSERT INTO Rubro(rubro,nombre) values(2,'Pasivo');
INSERT INTO Rubro(rubro,nombre) values(3,'Capital Contable');