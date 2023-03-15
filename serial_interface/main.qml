import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtCharts 2.15
import BackEnd 1.0
Window {
    width: 1400
    height: 700
    visible: true
    title: qsTr("QML")
    BackEnd{
        id:mybackend
    }
    Column{
        anchors.fill: parent
        id:main_c
        spacing: 10
        Rectangle{
            id:m_h1
            width:parent.width
            height:150
            color:"#a8b7e8"
            Row{
                id:r_h1
                anchors.fill: parent
                spacing:10
                Rectangle{
                    id:r_h1r1
                    width: 400
                    height: 150
                    color:"#d0e0e3"
                    TextBox{
                        id:read_cmd
                        //                        width: parent.width
                        //                        height: parent.height
                        anchors.fill: parent
                        anchors.margins: 5
                    }
                }
                Rectangle{
                    id:r_h1r2
                    width:500
                    height: parent.height
                    color:"#d0e0e3"
                    GroupBox
                    {
                        title: "Serial"
                        anchors.fill:parent
                        anchors.margins: 5
                        RowLayout{
                            ColumnLayout{
                                spacing: 20
                                Label{
                                    text:"BAUDRATE "
                                    font.pixelSize: 20
                                }
                                Label{
                                    text:"COM "
                                    font.pixelSize: 20
                                }
                            }
                            ColumnLayout{
                                ComboBox {
                                    model: ["9600", "11520"]
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                                ComboBox {
                                    model: ["COM 1", "COM 2", "COM 3","COM 4"]
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    onDownChanged: {
                                        console.log("a");

                                    }
                                }
                            }

                        }
                        Button{
                            id:connect_btn
                            anchors.fill: parent
                            anchors{
                                leftMargin: 300
                            }
                            text:"CONECT"
                            font.pixelSize: 20
                            //Layout.fillWidth: true
                            onClicked: {

                            }
                        }

                    }
                }
            }
        }
        Rectangle{
            id:m_h2
            width:parent.width
            height:500
            color:"#a8b7e8"
            Row{
                id:r_h2
                spacing:40
                anchors.fill: parent
                Rectangle{
                    id:r_h2r1
                    width:650
                    height:parent.height
                    color:"#d0e0e3"
                    GroupBox{
                        title:"PID Turning"
                        anchors.fill: parent
                        anchors.margins: 5
                        ColumnLayout{ //lay out theo cot
                            RowLayout{
                                spacing: 10
                                ColumnLayout{
                                    spacing: 50
                                    Label{
                                        text:"Kp "
                                        font.pixelSize: 15
                                    }
                                    Label{
                                        text:"Ki "
                                        font.pixelSize: 15
                                    }
                                    Label{
                                        text:"Kd "
                                        font.pixelSize: 15
                                    }
                                }
                                ColumnLayout{
                                    id:k_fied
                                    spacing: 20
                                    TextField {
                                        id: field
                                        placeholderText: "no value"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                    TextField {
                                        id: field2
                                        placeholderText: "no value"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                    TextField {
                                        id: field3
                                        placeholderText: "no value"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                }
                                Rectangle{
                                    width: 140
                                    height: 140
                                    color: "#d0e0e3"
                                    Button{
                                        id:send_btn
                                        anchors.fill: parent
                                        text:"SEND"
                                        font.pixelSize: 20
                                        //Layout.fillWidth: true
                                        onClicked: {
                                            //do backend 1
                                        }
                                    }
                                }
                                Rectangle{
                                    width: 140
                                    height: 140
                                    color: "#d0e0e3"
                                    Button{
                                        id:tuning_btn
                                        anchors.fill: parent
                                        text:"TUNING"
                                        font.pixelSize: 20
                                        //Layout.fillWidth: true
                                        onClicked: {
                                            //do backend 1
                                            mybackend.UART_connect();
                                        }
                                    }
                                }
                                Rectangle{
                                    width: 140
                                    height: 140
                                    color: "#d0e0e3"
                                    Button{
                                        id:request_btn
                                        anchors.fill: parent
                                        text:"REQUEST"
                                        font.pixelSize: 20
                                        //Layout.fillWidth: true
                                        onClicked: {
                                            //do backend 1
                                        }
                                    }
                                }

                            }
                            Rectangle{
                                width: 600
                                height:250
                                ChartView {
                                    title: "Line"
                                    anchors.fill: parent
                                    antialiasing: true
                                   legend.alignment: Qt.AlignTop
                                   // LineSeries
                                    LineSeries{
                                        id:setpoint
                                        name: "SetPoint"
                                        axisX: ValueAxis {
                                            min: 0
                                            max: 1.5
                                                 }
                                        axisY: ValueAxis {
                                                     min: 0
                                                     max: 100
                                                 }
                                        XYPoint { x: 0; y: 0 }
                                        XYPoint { x: 1.1; y: 100 }
                                        XYPoint { x: 1.9; y: 3.3 }
                                        XYPoint { x: 2.1; y: 2.1 }
                                        XYPoint { x: 2.9; y: 4.9 }
                                        XYPoint { x: 3.4; y: 3.0 }
                                        XYPoint { x: 4.1; y: 3.3 }
                                    }
                                    //
                                    SplineSeries{
                                        id:tuningpoit
                                        name: "SetPoint"
                                        XYPoint { x: 0; y: 0 }
                                        XYPoint { x: 1.1; y: 100 }
                                        XYPoint { x: 1.9; y: 3.3 }
                                        XYPoint { x: 2.1; y: 22.1 }
                                        XYPoint { x: 2.9; y: 42.9 }
                                        XYPoint { x: 3.4; y: 32.0 }
                                        XYPoint { x: 4.1; y: 32.3 }
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle{
                    id:r_h2r2
                    width:700
                    height:parent.height
                    color:"#c5c5b9"
                }
            }
        }
    }


}
