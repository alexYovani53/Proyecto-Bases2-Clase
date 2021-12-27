
const mysql  = require("mysql");
const configuracion = require("../config/mysql");


const conexion =  mysql.createConnection(configuracion.DB);

async function conectar(){
    
    conexion.connect(err=>{
        if(err){
            console.log("Error al conectar a la base de datos");
            console.log(err);
        }
        else 
            console.log("conexión establecida con la base de datos");
    })
}

async function desconectar(){
     conexion.end();
}


const ejecutarQuery = (query)=>{
    return new Promise((resolve,reject)=>{
        conexion.query(query,(err,results)=>{
            if(err)reject(err);
            else resolve(results);
        })
    })
}



module.exports.conectar = conectar;
module.exports.desconectar = desconectar;
module.exports.ejecutarQuery = ejecutarQuery;