
const servidorWeb = require("./services/servidor");
const servidorDB = require("./services/base");

const iniciar = async()=>{
    try{
        await servidorWeb.inicializar();
        await servidorDB.conectar();
    }
    catch(err){
        console.log(err)
        console.log("no se iniciaron correctaente los servicios")
    }
}

const apagar = async()=>{
    let err;
    try {
        await servidorWeb.apagar();
        await servidorDB.desconectar();
    } catch (error) {
        console.log(error)
        err = error;
    }

    if(err)process.exit(1);
    process.exit(0);

}

iniciar();


process.on('SIGTERM',()=>apagar())
process.on('SIGINT',()=>apagar())
process.on('uncaughtException',(err)=>{
    console.log(err)
    apagar();
})