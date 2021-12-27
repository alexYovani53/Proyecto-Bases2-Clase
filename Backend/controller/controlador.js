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