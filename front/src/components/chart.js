import React, { useState, useEffect, Fragment } from "react";
import Chart from "react-apexcharts";



const Graph = (props) => {

    const [options] = useState({
        chart: {
            id: "basic-bar",
            height: 'auto'
        },
        xaxis: {
            categories: ["Noviembre", "Diciembre", "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre"],
            labels: {
                show: true,
                rotateAlways: false,
                hideOverlappingLabels: true,
                showDuplicates: false,
                trim: true,
                minHeight: undefined,
                maxHeight: 120,
                style: {
                    colors: "#d9d4d4",
                    fontSize: '12px',
                    fontFamily: 'Helvetica, Arial, sans-serif',
                    fontWeight: 'bold',
                    cssClass: 'apexcharts-xaxis-label',
                }
            }
        },
        yaxis: {
            max: 17
        },
        stroke: {
            curve: 'smooth',
        },
        markers: {
            size: 3,
        },
        legend: {
            show: true,
            position: 'right',
            horizontalAlign: 'right',
            fontSize: '15px',
            floating: false,
            showForSingleSeries: true,
            onItemClick: {
                toggleDataSeries: true
            },
            onItemHover: {
                highlightDataSeries: false
            },
            labels: {
                colors: '#d9d4d4',
                useSeriesColors: false
            },
            offsetY: 150,

        },
        tooltip: {
            enabled: true,
            shared: false,
        },
        theme: {
            mode: 'dark',
            palette: 'palette3'
        },
        dataLabels: {
            enabled: false,
        },
        title: {
            text: "Ranking de bancos para el periodo Nov2020 - Oct2021",
            align: 'center',
            margin: 10,
            offsetX: 0,
            offsetY: 0,
            floating: false,
            style: {
              fontSize:  '20px',
              fontFamily:  undefined,
              color:  '#d9d4d4'
            },
        },
        colors: [
            '#ff3333', '#ff9933', '#ffff33', '#99ff33', '#33ff33',
            '#33ff99', '#c1ff33', '#5bff33', '#33ff71', '#33ffd7',
            '#33c1ff', '#335bff', '#33e8ff', '#3382ff', '#4a33ff',
            '#b033ff', '#ff33e8'

        ]
        
    })

    const [series, setSeries] = useState({})


    /*
        series: [
            {
            name: "series-1",
            data: [30, 40, 45, 50, 49, 60, 70, 91]
            }
        ]
    */

    useEffect(() => {

        setSeries(props.props.series)

    }, [props])


    if (series.length > 0) {
        return (
            <Fragment>
                <div style={{ textAlign: "center" }}>
                    <Chart
                        options={options}
                        series={series}
                        type="line"
                        width="1200"
                    />
                </div>

            </Fragment>
        )
    } else {
        return (
            <h1>Cargando...</h1>
        )
    }


}

export default Graph;