import React, { Fragment, useState } from "react";
import axios from 'axios';

const LogIn = () => {

    const [data, setData] = useState({})
    const [alert, setAlert] = useState(false)

    const handleChange = async (e) => {
        const { name, value } = e.target;
        setData({ ...data, [name]: value })
        setAlert(false)
    }

    const logIn = () => {

        axios.post("http://localhost:3200/login", {
            usuario: data.username,
            contrasena: data.pass
        }).then((res) => {
            if (res.data.status === "bad" || res.data.status === "erroneo") {
                setAlert(true)
            }
            else {
                localStorage.setItem("user", data.username)
                window.location.replace("/home")
            }
        })
            .catch((err) => {
                setAlert(true)
            })

    }


    return (

        <Fragment>

            <div style={{ textAlign: "right", margin: 20 }}>
                <h3>
                    RANKING DE BANCOS GT
                </h3>
            </div>
            <div style={{ textAlign: "center", margin: 20 }}>
                <h1>
                    Iniciar sesión
                </h1>
            </div>

            <div className="card card-body bg-dark" style={{ alignItems: "center", marginBottom: 20 }}>
                <div style={{ width: "40%" }}>
                    <div className="was-validated">

                        <div className="form-group">
                            <label htmlFor="username">Nombre de usuario:</label>
                            <input type="username" className="form-control" placeholder="Ingrese correo" name="username" required onChange={handleChange} />
                            <div className="valid-feedback">Valid.</div>
                            <div className="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div className="form-group">
                            <label htmlFor="pass">Contraseña:</label>
                            <input type="password" className="form-control" placeholder="Contraseña" name="pass" required onChange={handleChange} />
                            <div className="valid-feedback">Valid.</div>
                            <div className="invalid-feedback">Please fill out this field.</div>
                        </div>

                        <div className="btn btn-primary" onClick={logIn} > Ingresar </div>
                    </div>
                </div>
            </div>

            {
                alert &&

                <div className="card">
                    <div className="alert alert-danger" style={{ position: "relative" }}>
                        <strong>Ingreso bloqueado!</strong> Verifique que su nombre de usuario y contraseña sean correctos.
                    </div>
                </div>
            }



        </Fragment>

    )

}

export default LogIn;