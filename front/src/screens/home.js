import axios from "axios";
import { Component, Fragment } from "react";
import NavBar from "../components/navbar";

class Home extends Component {

    constructor(props) {
        super(props)
        this.state = {
            primerSemestre: null,
            segundoSemestre: null,
            data: []
        }

        //this.joinData = this.joinData.bind(this);
    }


    /*joinData() {

        var data = []
        for (let i = 0; i < this.state.primerSemestre.length; i++) {
            for (let j = 0; j < this.state.segundoSemestre.length; j++) {
                if (this.state.primerSemestre[i].banco === this.state.segundoSemestre[j].banco) {
                    data.push(
                        { ...this.state.primerSemestre[i], ...this.state.segundoSemestre[j] }
                    )
                }
            }
        }

        this.setState({ data: data })
    }*/

    componentDidMount() {

        axios.get("http://localhost:3200/segundoSemestre").then((res) => {
            axios.get("http://localhost:3200/primerSemestre").then((res1) => {

                var data = []
                for (let i = 0; i < res1.data.resultado.length; i++) {
                    for (let j = 0; j < res.data.resultado.length; j++) {
                        if (res1.data.resultado[i].banco === res.data.resultado[j].banco) {
                            data.push(
                                { ...res1.data.resultado[i], ...res.data.resultado[j] }
                            )
                        }
                    }
                }
                this.setState({ data:data })
            });
        });
    }

    render() {

        if (this.state.data.length > 0) {
            return (

                <Fragment>

                    <NavBar></NavBar>

                    <br></br>

                    <table className="table table-striped">
                        <thead style={{textAlign:"center"}}>
                            <tr>
                                <th>
                                    BANCO
                                </th>
                                <th>
                                    NOVIEMBRE 2020
                                </th>
                                <th>
                                    DICIEMBRE 2020
                                </th>
                                <th>
                                    ENERO 2021
                                </th>
                                <th>
                                    FEBRERO 2021
                                </th>
                                <th>
                                    MARZO 2021
                                </th>
                                <th>
                                    ABRIL 2021
                                </th>
                                <th>
                                    MAYO 2021
                                </th>
                                <th>
                                    JUNIO 2021
                                </th>
                                <th>
                                    JULIO 2021
                                </th>
                                <th>
                                    AGOSTO 2021
                                </th>
                                <th>
                                    SEPTIEMBRE 2021
                                </th>
                                <th>
                                    OCTUBRE 2021
                                </th>
                            </tr>
                        </thead>
                        <tbody style={{textAlign:"center"}}>

                            {
                                this.state.data.map((b) => {
                                    return (

                                        <tr key={b.banco}>
                                            <td>
                                                {b.nombre}
                                            </td>
                                            <td>
                                                {b.nov2020}
                                            </td>
                                            <td>
                                                {b.dec2020}
                                            </td>
                                            <td>
                                                {b.enero2021}
                                            </td>
                                            <td>
                                                {b.feb2021}
                                            </td>
                                            <td>
                                                {b.marzo2021}
                                            </td>
                                            <td>
                                                {b.abril2021}
                                            </td>
                                            <td>
                                                {b.mayo2021}
                                            </td>
                                            <td>
                                                {b.jun2021}
                                            </td>
                                            <td>
                                                {b.jul2021}
                                            </td>
                                            <td>
                                                {b.ago2021}
                                            </td>
                                            <td>
                                                {b.sep2021}
                                            </td>
                                            <td>
                                                {b.oct2021}
                                            </td>
                                        </tr>

                                    )
                                })
                            }

                        </tbody>

                    </table>


                </Fragment>

            )
        }
        else {

            return (
                <h1 style={{ textAlign: "center" }}>
                    Cargando ...
                </h1>
            )

        }

    }

}

export default Home;