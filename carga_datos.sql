delete from Temporal;


CREATE TABLE Temporal(
    banco varchar(100),
    activo int,
    pasivo int,
    capital int,
    mes int
);


/*
mysql --local-infile=1 -u root -p
SET GLOBAL local_infile=1;
use proyecto_clase;

LOAD DATA LOCAL INFILE 'C:\\control\\Datos.csv' 
INTO TABLE Temporal
CHARACTER SET latin1
COLUMNS TERMINATED BY ';' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES (Banco,activo,pasivo,capital,mes);
*/

-- Llenado de tablas


-- Llenado de la tabla bancos
INSERT INTO Banco(nombre)
SELECT DISTINCT Banco from temporal;






-- lleando tabla maestra, activo
INSERT INTO Banco_Rubro(cantidad,banco,rubro,mes)
SELECT activo, bc.banco,1 as rubro, ms.mes
from 
temporal tmp ,
Banco bc,
Mes ms
where tmp.banco = bc.nombre and tmp.mes = ms.mes;


-- llenando de pasivo
INSERT INTO Banco_Rubro(cantidad,banco,rubro,mes)
SELECT pasivo, bc.banco, 2 as rubro, ms.mes
from 
temporal tmp ,
Banco bc,
Mes ms
where tmp.banco = bc.nombre and tmp.mes = ms.mes;

-- lleando de capital
INSERT INTO Banco_Rubro(cantidad,banco,rubro,mes)
SELECT capital, bc.banco, 3 as rubro, ms.mes
from 
temporal tmp ,
Banco bc,
Mes ms
where tmp.banco = bc.nombre and tmp.mes = ms.mes;