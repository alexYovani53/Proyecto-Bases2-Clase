select  ROW_NUMBER() OVER(ORDER BY rubro ASC) AS fila, banco,rubro from banco_rubro;

create view noviembre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 1;

create view diciembre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 2;

create view enero as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 3;

create view febrero as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 4;

create view marzo as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 5;

create view abril as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 6;

create view mayo as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 7;

create view junio as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 8;

create view julio as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 9;

create view agosto as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 10;

create view septiembre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 11;

create view octubre as
select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
inner join banco_rubro on banco.banco =  banco_rubro.banco
inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
where banco_rubro.mes = 12;

create view rankingPrimerSemestre as
select ROW_NUMBER() OVER(ORDER BY sum(cantidad) desc) AS fila, banco_rubro.banco, banco.nombre, sum(cantidad) as activo from banco_rubro
inner join banco on banco.banco = banco_rubro.banco
where banco_rubro.mes  in (1,2,3,4,5,6)
group by banco_rubro.banco, banco.nombre 
order by activo desc; 

create view rankingAnio as
select ROW_NUMBER() OVER(ORDER BY sum(cantidad) desc) AS fila, banco_rubro.banco, banco.nombre, sum(cantidad) as activo from banco_rubro
inner join banco on banco.banco = banco_rubro.banco
group by banco_rubro.banco, banco.nombre 
order by activo desc; 