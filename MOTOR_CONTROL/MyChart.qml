import QtQuick
import QtQuick.Controls 2.15
import QtCharts 2.15
//chart
ChartView {
        id: root
        width: 600
        height: 400
        animationOptions: ChartView.NoAnimation
        antialiasing: true
        backgroundColor: "#ABAEC5"

//        ValueAxis {
//            id: axisY1
//            min: 0
//            max: 100
//            gridVisible: false
//            color: "black"
//            labelsColor: "black"
//            labelFormat: "%.0f"
//            titleText:"Position"
//            tickCount:11
//        }


//                    DateTimeAxis {
//                                id: axisXw
//                                min: new Date(appWin.minMsec)
//                                max: new Date(appWin.maxMsec)
//                                format: "hh:mm"
//                                tickCount: 5
//                                labelsFont:Qt.font({pointSize: 10})
//                                labelsColor: appWin.baseFontColor
//                                color: appWin.graphTickColor
//                            }


//        LineSeries {
//            id: lineSeries2
//            name: "TUNING POINT"
//            color: "red"

//            axisX: axisX
//            axisY: axisY1

//        }
    }
//
