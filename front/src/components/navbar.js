import React, { Fragment } from 'react';


const NavBar = () => {

    if(localStorage.getItem('user')==="null"){
        window.location.replace('/')
    }else{
        return (

            <Fragment>
    
                <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div className="container-fluid">
                        <div className="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div className="navbar-nav btn-group">
                                <div className="btn btn-outline-info" aria-current="page" onClick={()=>alert("DATOS CARGADOS EXITOSAMENTE")}>Cargar datos</div>
                                <a className="btn btn-outline-success" href="/home">Tabla</a>
                                <a className="btn btn-outline-warning" href="/graph">Grafica</a>
                            </div>
                        </div>
                        <div className="btn btn-outline-danger" onClick={()=> {localStorage.setItem("user", "null"); window.location.replace('/') } } >Salir</div>
                    </div>
                </nav>
    
            </Fragment>
    
        )
    }
}

export default NavBar;