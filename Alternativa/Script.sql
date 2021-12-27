CREATE DATABASE proyectoBD2;

USE proyectoBD2;

SHOW TABLES;

SELECT * FROM periodo;

DROP TABLE banco_rubro;
DROP TABLE banco;
DROP TABLE periodo;
DROP TABLE rubro;
DROP VIEW ratingperiodo; 

/* =============================== TABLAS =============================== */

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

CREATE TABLE Periodo(
    mes varchar(10) not null,
    anio int not null,
    numero int not null,
    PRIMARY KEY(mes, anio)
);

CREATE TABLE Banco_Rubro(
    banco_rubro int not null AUTO_INCREMENT,
    cantidad int not null,
    banco int not null,
    rubro int not null,
    mes varchar(10) not null,
    anio int not null,
    PRIMARY KEY(banco_rubro),
    CONSTRAINT fk_banco FOREIGN KEY(banco) REFERENCES Banco(banco) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_rubro FOREIGN KEY(rubro) REFERENCES Rubro(rubro) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_priodo FOREIGN KEY(mes, anio) REFERENCES Periodo(mes, anio) ON DELETE CASCADE ON UPDATE CASCADE
);
SELECT * FROM Banco_Rubro;


/* =============================== TABLA TEMPORAL =============================== */

CREATE TEMPORARY TABLE Temporal(
	banco VARCHAR(50) NOT NULL,
    activo INT NOT NULL,
    pasivo INT NOT NULL,
    capital INT NOT NULL,
    numeroPeriodo INT NOT NULL,
    mes VARCHAR(10) NOT NULL,
    anio INT NOT NULL
);
DROP TABLE Temporal;


/* =============================== CARGA DE DATOS =============================== */

LOAD DATA INFILE  'Z:\\data.csv'
	INTO TABLE Temporal
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES
	(banco, activo, pasivo, capital, numeroPeriodo, mes, anio);

-- BANCOS
INSERT INTO Banco (nombre)
	SELECT DISTINCT banco
	FROM Temporal;
SELECT * FROM Banco;    

-- RUBROS
INSERT INTO Rubro(rubro,nombre) VALUES(1,'Activo');
INSERT INTO Rubro(rubro,nombre) VALUES(2,'Pasivo');
INSERT INTO Rubro(rubro,nombre) VALUES(3,'Capital Contable');
SELECT * FROM Rubro; 

-- PERIODO
INSERT INTO Periodo (mes, anio, numero)
	SELECT DISTINCT mes, anio, numeroPeriodo
    FROM Temporal;
SELECT * FROM Periodo;

-- BANCO_RUBRO --> ACTIVO
INSERT INTO Banco_Rubro (cantidad, banco, rubro, mes, anio)
	SELECT t.activo, b.banco, 1 AS rubro, t.mes, t.anio
    FROM Temporal t, Banco b
    WHERE b.nombre=t.banco;
    
-- BANCO_RUBRO --> PASIVO
INSERT INTO Banco_Rubro (cantidad, banco, rubro, mes, anio)
	SELECT t.pasivo, b.banco, 2 AS rubro, t.mes, t.anio
    FROM Temporal t, Banco b
    WHERE b.nombre=t.banco;
    
-- BANCO_RUBRO --> CAPITAL
INSERT INTO Banco_Rubro (cantidad, banco, rubro, mes, anio)
	SELECT t.capital, b.banco, 3 AS rubro, t.mes, t.anio
    FROM Temporal t, Banco b
    WHERE b.nombre=t.banco;


/* =============================== VISTA DE DATOS =============================== */

CREATE VIEW RatingPeriodo (idBanco, banco, activo, anio, mes, periodo) AS
SELECT b.banco, b.nombre, SUM(br.cantidad) AS activo, br.anio, br.mes, p.numero
	FROM Banco_Rubro br
	INNER JOIN Banco b ON b.banco = br.banco
    INNER JOIN Periodo p ON p.anio = br.anio AND p.mes=br.mes
	WHERE br.rubro=1
	GROUP BY br.banco, br.mes, br.anio
	ORDER BY b.banco ASC;

SELECT *
	FROM RatingPeriodo
	ORDER BY periodo;

-- 5 primeros bancos en orden ascendente para el mes de noviembre de 2020
SELECT *
	FROM (SELECT banco, mes, anio, activo*1000 AS total
		FROM RatingPeriodo
		WHERE mes = "NOVIEMBRE" AND anio = 2020
		GROUP BY mes, anio, banco
		ORDER BY total DESC
		LIMIT 5) t
	ORDER BY TOTAL ASC;

-- 5 ultimos bancos en orden descendente para el mes de febrero de 2021
SELECT *
	FROM (SELECT banco, mes, anio, activo*1000 AS total
		FROM RatingPeriodo
		WHERE mes = "FEBRERO" AND anio = 2021
		GROUP BY mes, anio, banco
		ORDER BY total ASC
		LIMIT 5) t
	ORDER BY total DESC;

-- 3 primeros bancos en orden ascendente para el primer semestre 30/11/2020-30/04/2021
SELECT 
	* FROM (SELECT banco, sum(activo)*1000 as total
		FROM RatingPeriodo
		WHERE periodo<7
		GROUP BY banco
		ORDER BY total DESC
		LIMIT 3) t
	ORDER BY total ASC;

-- Mejor banco durante todo el año 30/11/2020 al 31/10/2021
SELECT banco, sum(activo)*1000 as total
	FROM RatingPeriodo
	WHERE periodo<=12
	GROUP BY banco
	ORDER BY total DESC
	LIMIT 1;