import QtQuick
import QtQuick.Controls 2.15
import QtCharts 2.15

ChartView {
        id: root
         anchors.fill: parent
        animationOptions: ChartView.NoAnimation
        antialiasing: true
        backgroundColor: "#ABAEC5"

        ValueAxis {
            id: axisY1
            min: 0
            max: 100
            gridVisible: false
            color: "black"
            labelsColor: "black"
            labelFormat: "%.0f"
            titleText:"Position"
            tickCount:11
        }

        ValueAxis {
            id: axisX
            min: 0
            max: 35
            gridVisible: false
            color: "black"
            labelsColor: "black"
            labelFormat: "%.0f"
            tickCount: 21
            titleText:"Time(ms)"
        }

        LineSeries {
            id: lineSeries1
            name: "SET POINT"
            color: "blue"
            axisX: axisX
            axisY: axisY1
        }

        LineSeries {
            id: lineSeries2
            name: "TUNING POINT"
            color: "red"

            axisX: axisX
            axisY: axisY1

        }
    }
