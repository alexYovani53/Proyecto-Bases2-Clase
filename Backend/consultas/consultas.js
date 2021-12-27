const base = require("../services/base");

module.exports.resultadoMesNoviembre = async()=>{
    let query  =  `select * from noviembre`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesDiciembre = async()=>{
    let query  =  `select * from diciembre`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesEnero = async()=>{
    let query  =  `select * from enero`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesFebrero = async()=>{
    let query  =  `select * from febrero`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesMarzo = async()=>{
    let query  =  `select * from marzo`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesAbril = async()=>{
    let query  =  `select * from abril`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesMayo = async()=>{
    let query  =  `select * from mayo`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesJunio = async()=>{
    let query  =  `select * from junio`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesJulio = async()=>{
    let query  =  `select * from julio`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesAgosto = async()=>{
    let query  =  `select * from agosto`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesSeptiembre = async()=>{
    let query  =  `select * from septiembre`;
    return base.ejecutarQuery(query);
}
module.exports.resultadoMesOctubre = async()=>{
    let query  =  `select * from octubre`;
    return base.ejecutarQuery(query);
}

module.exports.crearVistas =  async()=>{
    let query = `create or replace  view noviembre as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 1;
    
    create  or replace view diciembre as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 2;
    
    create  or replace view enero as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 3;
    
    create  or replace view febrero as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 4;
    
    create or replace  view marzo as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila, banco.banco,  banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 5;
    
    create or replace  view abril as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 6;
    
    create or replace  view mayo as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 7;
    
    create or replace  view junio as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 8;
    
    create or replace  view julio as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 9;
    
    create  or replace view agosto as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 10;
    
    create or replace view septiembre as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 11;
    
    create or replace view octubre as
    select  ROW_NUMBER() OVER(ORDER BY banco_rubro.cantidad desc) AS fila,  banco.banco, banco.nombre as bancoNombre,rubro.nombre as rubro,banco_rubro.cantidad,banco_rubro.mes from banco
    inner join banco_rubro on banco.banco =  banco_rubro.banco
    inner join rubro on rubro.nombre = "Activo" and rubro.rubro = banco_rubro.rubro 
    where banco_rubro.mes = 12;`;

    return base.ejecutarQuery(query);
}

module.exports.crearTableUsuario = async()=>{
    let query = `create table if not exists usuario (
        id int primary key not null,
        usuario varchar(30),
        contrasena varchar(200));`;
    return base.ejecutarQuery(query);
}

module.exports.insertarUsuario = async(id, usuario,contrasena)=>{
    let query =  `insert into usuario(id,usuario,contrasena) values (${id},'${usuario}','${contrasena}');`;
    return base.ejecutarQuery(query);
}

module.exports.contarUsuarios = async()=>{
    let query = `select count(*) as numero from usuario;`;
    return base.ejecutarQuery(query);
}

module.exports.buscarUsuario = async (parametros) =>{
    let query = `select * from usuario where usuario = '${parametros.usuario}';`;
    return base.ejecutarQuery(query);
}

module.exports.primerSemestre = async (parametros) =>{
    let query = `select * from rankingPrimerSemestre;`;
    return base.ejecutarQuery(query);
}


module.exports.segundoSemestre = async (parametros) =>{
    let query = `select * from rankingSegundoSemestre;`;
    return base.ejecutarQuery(query);
}