const { request } = require("express");
const consultas =  require("../consultas/consultas")


module.exports.inicio = async(request,response)=>{
    response.status(200).json({
        estado:"Exitoso"
    })
}

module.exports.noviembre = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesNoviembre();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.diciembre = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesDiciembre();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.enero = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesEnero();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.febrero = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesFebrero();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.marzo = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesMarzo();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.abril = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesAbril();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.mayo = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesMayo();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.junio = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesJunio();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.julio = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesJulio();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.agosto = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesAgosto();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}
module.exports.septiembre = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesSeptiembre();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}
module.exports.octubre = async(request,response)=>{
    try {
        let resultado = await consultas.resultadoMesOctubre();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.crearVistas = async(request,response)=>{
    try {
        let resultado = await consultas.crearVistas();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (err) {
        response.status(400).json({
            mensaje: err,
            estado: "erroneo"
        })
    }
}

module.exports.crearUsuarios = async(request,response)=>{

    try {
        let crypto = require("crypto");
        let hash =  crypto.createHash('sha256').update("bases2").digest('hex');

        let crearTabla =  await consultas.crearTableUsuario();
        
        let respuesta = await consultas.contarUsuarios();
        let conteo = respuesta[0].numero+1;
        
        if(conteo >= 2){
            response.status(200).json({
                mensaje:"ya existen 2 usuarios",
                estatus:"exito"
            });
        }else{
            let ingreso1 = await consultas.insertarUsuario(conteo,"user1",hash);
            let ingreso2 = await consultas.insertarUsuario(conteo+1,"user2",hash);
    
            response.status(200).json({
                ingreso1,
                ingreso2,
                mensaje:"ingreso de 2 usuarios, exitoso",
                estatus:"exito"
            })
    
        }


    } catch (error) {
        response.status(400).json({
            error,
            estatus:"erroneo"
        })
    }

}


module.exports.login = async(request,response)=>{
    try {
        
        let contrasena = request.body.contrasena;
        let usuario = request.body.usuario;

        let crypto = require("crypto");
        let hash = crypto.createHash("sha256").update(contrasena).digest("hex");

        let userResponse = await consultas.buscarUsuario({usuario:usuario});

        if(userResponse.lenght ==0){
            response.status(400).json({
                status:'error',
                mensaje: 'usuario no encontrado',
                id_user: -1
            })
        }else{
            // console.log(String(hash));
            // console.log(String(userResponse[0].contrasena));
            if(String(hash) == String(userResponse[0].contrasena)){
                response.status(200).json({
                    status:'exitoso',
                    mensaje: 'Login correcto',
                    id_user:userResponse[0].id,
                })
            }else{
                response.status(200).json({
                    status:'bad',
                    mensaje: 'Contraseña incorrecta',
                    id_user: -1
                })
            }
        }

    } catch (error) {
        console.log(error)
        response.status(400).json({
            error,
            estatus:"erroneo"
        })
    }
}


module.exports.primerSemestre = async(request,response)=>{
    try {
        let resultado = await consultas.primerSemestre();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}

module.exports.segundoSemestre = async(request,response)=>{
    try {
        let resultado = await consultas.segundoSemestre();
        response.status(200).json({
            resultado,
            estado: "exitoso"
        })
    } catch (error) {
        response.status(400).json({
            estado: "erroneo"
        })
    }
}