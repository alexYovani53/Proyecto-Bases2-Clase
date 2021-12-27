const express = require("express");
const router = express.Router();
const controlador =  require("../controller/controlador")

router.get("/",(request,response)=>{
    controlador.inicio(request,response);
});

router.get("/noviembre",(request,response)=>{
    controlador.noviembre(request,response);
});
router.get("/diciembre",(request,response)=>{
    controlador.diciembre(request,response);
});

router.get("/enero",(request,response)=>{
    controlador.enero(request,response);
});

router.get("/febrero",(request,response)=>{
    controlador.febrero(request,response);
});

router.get("/marzo",(request,response)=>{
    controlador.marzo(request,response);
});

router.get("/abril",(request,response)=>{
    controlador.abril(request,response);
});

router.get("/mayo",(request,response)=>{
    controlador.mayo(request,response);
});

router.get("/junio",(request,response)=>{
    controlador.junio(request,response);
});

router.get("/julio",(request,response)=>{
    controlador.julio(request,response);
});

router.get("/agosto",(request,response)=>{
    controlador.agosto(request,response);
});

router.get("/septiembre",(request,response)=>{
    controlador.septiembre(request,response);
});

router.get("/octubre",(request,response)=>{
    controlador.octubre(request,response);
});

router.get("/crearVistas",(request,response)=>{
    controlador.crearVistas(request,response);
});




module.exports = router;