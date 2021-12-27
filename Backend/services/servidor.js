const http =  require("http");
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const corsOptions = { origin: true, optionsSuccessStatus: 200}
const puerto = require("../config/servidorWeb");

const router = require("../route/router");

const servidor = express();
const httpServer =  http.createServer(servidor);
servidor.use(cors(corsOptions));
servidor.use(bodyParser.json({ limit: '10mb', extended: true }));
servidor.use(bodyParser.urlencoded({ limit: '10mb', extended: true }));

servidor.use('/',router);



const inicializar = ()=>{
    return new Promise((resolve, reject)=>{
             
        httpServer.listen(puerto.port)
        .on('listening',()=>{
            console.log("Servidor ejecutandose");
            resolve();
        })
        .on("error",(err)=>{
            console.log("Falla en el servidor");
            reject(err)
        })

    });


}


function close(){
    return new Promise((resolve,reject)=>{
        httpServer.close(err=>{
            if(err) return reject(err);
            return resolve();
        })
    })
}

module.exports.inicializar = inicializar;
module.exports.apagar = close;