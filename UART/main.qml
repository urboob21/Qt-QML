import QtQuick
import QtQuick.Controls 2.15
import BackEnd 1.0
import QtCharts 2.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BackEnd{
        id:mybackend
        onUart_close: {
            btn_connect.text="Connect"

            console.log("Da ngat ket noi");
        }
        onUart_open: {
           console.log("Da  ket noi");
            btn_connect.text="DisConnect"
        }
    }




    Button{
        id:btn_connect
        text:"Connect"
        onClicked: {
            mybackend.UART_connect()
        }
    }

//

            ChartView {
                    id: chartView
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent
                    animationOptions: ChartView.NoAnimation
                    antialiasing: true
                    backgroundColor: "#1f1f1f"

                    ValueAxis {
                        id: axisY1
                        min: 0
                        max: 100
                        gridVisible: false
                        color: "#ffffff"
                        labelsColor: "#ffffff"
                        labelFormat: "%.0f"
                    }

                    ValueAxis {
                        id: axisX
                        min: 0
                        max: 50
                        gridVisible: false
                        color: "#ffffff"
                        labelsColor: "#ffffff"
                        labelFormat: "%.0f"
                        tickCount: 5
                    }
                    LineSeries {
                        id: lineSeries1
                        name: "signal 1"
                        color: "white"
                        axisX: axisX
                        axisY: axisY1
                        XYPoint { x: 0; y: 0 }
                                XYPoint { x: 1.1; y: 2.1 }
                                XYPoint { x: 1.9; y: 3.3 }
                                XYPoint { x: 2.1; y: 2.1 }
                                XYPoint { x: 2.9; y: 4.9 }
                                XYPoint { x: 3.4; y: 3.0 }
                                XYPoint { x: 4.1; y: 3.3 }
                    }

                    LineSeries {
                        id: lineSeries2
                        name: "signal 1"
                        color: "white"
                        axisX: axisX
                        axisY: axisY1
                        XYPoint { x: 0; y: 0 }
                                XYPoint { x: 11.1; y: 21.1 }
                                XYPoint { x: 11.9; y: 31.3 }
                                XYPoint { x: 21.1; y: 21.1 }
                                XYPoint { x: 21.9; y: 41.9 }
                                XYPoint { x: 31.4; y: 31.0 }
                                XYPoint { x: 41.1; y: 31.3 }
                    }
                }
            //



}
