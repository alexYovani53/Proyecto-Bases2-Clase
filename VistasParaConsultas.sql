use proyecto_clase;

select  ROW_NUMBER() OVER(ORDER BY rubro ASC) AS fila, banco,rubro from banco_rubro;

create or replace view noviembre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS nov2020, banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 1;
select * from noviembre;

create or replace view diciembre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS dec2020, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 2;

create or replace view enero as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS enero2021, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 3;

create or replace view febrero as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS feb2021, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 4;

create or replace view marzo as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS marzo2021, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 5;

create or replace view abril as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS abril2021,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 6;

create or replace view mayo as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS mayo2021,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 7;

create or replace view junio as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS jun2021,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 8;

create or replace view julio as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS jul2021,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 9;

create or replace view agosto as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS ago2021,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 10;

create or replace view septiembre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS sep2021,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 11;

create or replace view octubre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS oct2021,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 12;
select * from octubre;

create or replace view rankingPrimerSemestre as
select ROW_NUMBER() OVER(ORDER BY sum(cantidad) desc) AS fila, banco_rubro.banco, banco.nombre, sum(cantidad) as activo from banco_rubro
inner join banco on banco.banco = banco_rubro.banco
where banco_rubro.mes  in (1,2,3,4,5,6)
group by banco_rubro.banco, banco.nombre 
order by activo desc; 

create or replace view rankingAnio as
select ROW_NUMBER() OVER(ORDER BY sum(cantidad) desc) AS fila, banco_rubro.banco, banco.nombre, sum(cantidad) as activo from banco_rubro
inner join banco on banco.banco = banco_rubro.banco
group by banco_rubro.banco, banco.nombre 
order by activo desc; 

create or replace view rankingPrimerSemestre as
select b.banco, b.nombre, nov.nov2020, dic.dec2020, en.enero2021, feb.feb2021, mar.marzo2021, abr.abril2021
from banco b
RIGHT JOIN noviembre nov
ON b.banco = nov.banco
RIGHT JOIN diciembre dic
ON b.banco = dic.banco
RIGHT JOIN enero en
ON b.banco = en.banco
RIGHT JOIN febrero feb
ON b.banco = feb.banco
RIGHT JOIN marzo mar
ON b.banco = mar.banco
RIGHT JOIN abril abr
ON b.banco = abr.banco;
select * from rankingPrimerSemestre;


create or replace view rankingSegundoSemestre as
select b.banco, b.nombre, may.mayo2021, jun.jun2021, jul.jul2021, agos. ago2021, sep.sep2021, octu.oct2021
from banco b
RIGHT JOIN mayo may
ON b.banco = may.banco
RIGHT JOIN junio jun
ON b.banco = jun.banco
RIGHT JOIN julio jul
ON b.banco = jul.banco
RIGHT JOIN agosto agos
ON b.banco = agos.banco
RIGHT JOIN septiembre sep
ON b.banco = sep.banco
RIGHT JOIN octubre octu
ON b.banco = octu.banco; 
select * from rankingSegundoSemestre;