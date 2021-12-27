import { Component, Fragment } from "react";
import axios from "axios";
import NavBar from "../components/navbar";
import Graph from '../components/chart'

class Grafic extends Component {

    constructor(props) {
        super(props)
        this.state = {
            data: [],
            series: []
        }

        this.setSeries = this.setSeries.bind(this)
    }


    /*series: [
        {
        name: "series-1",
        data: [30, 40, 45, 50, 49, 60, 70, 91]
        }
    ]*/

    setSeries(data) {

        var series = [];

        data.forEach(b => {
            series = [...series, {name: b.nombre, data:[
                b.nov2020,
                b.dec2020,
                b.enero2021,
                b.feb2021,
                b.marzo2021,
                b.abril2021,
                b.mayo2021,
                b.jun2021,
                b.jul2021,
                b.ago2021,
                b.sep2021,
                b.oct2021,
            ]}]
        });

        return series;
    }


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
                this.setState({ series: this.setSeries(data) })
            });
        });
        
    }


    render() {

        if (this.state.series.length > 0) {
            return (

                <Fragment>

                    <NavBar></NavBar>

                    <br></br>
                    <div className="d-flex justify-content-center">
                        <Graph props={{series:this.state.series}} ></Graph>
                    </div>


                </Fragment>

            )
        }
        else {

            return (

                <h1>
                    Cargando ...
                </h1>

            )

        }


    }

}

export default Grafic;

