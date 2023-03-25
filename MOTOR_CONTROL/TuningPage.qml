import QtQuick
import QtQuick.Controls 2.15
import QtCharts 2.15
import MyBackEnd 1.0


Rectangle {

    /*-------- data form backend append to chart ---------*/
    Connections{
        target:mybackend
        onB_pointChanged:{
            console.log(mybackend.b_point.x)
            console.log(mybackend.b_point.y)
            lineSeries1.append(mybackend.b_point.x,mybackend.b_point.y)
            lineSeries2.append(mybackend.b_point.x,125);
        }
    }

    /*--------------    BODY  -------------*/
    color:"#C9CDEA"

//NEXT button
    Button{
        width: 100
        height: 50
        text:"Next"
        anchors{
            right: parent.right
            bottom: parent.bottom
            rightMargin: 20
            bottomMargin: 20
        }
        onClicked: {
            m_stackview.push("ControlPage.qml")
        }
    }

//BACK button
    Button{
        width: 100
        height: 50
        text:"Back"
        anchors{
            left: parent.left
            bottom: parent.bottom
            leftMargin: 20
            bottomMargin: 20
        }
        onClicked: {
            m_stackview.pop()
        }
    }

//SetPoint Textfied
    Column{
        anchors{
            left: parent.left
            top:parent.top
            topMargin: 40
            margins: 20
        }

        spacing:20
        Label{
            text:"Set Position (dec)"
        }
        TextField{
            id:tf_setpoint

        }
    }

//Content
    GroupBox{
        id:gb_tuning
        font.pixelSize: 15
        title: "Tuning"
        anchors{
            centerIn: parent
        }

        Column{
            spacing: 40
            Row{
                spacing:20
                Column{
                    spacing: 20
                    Row{
                        spacing:40
                        Label{
                            text:"Kp"
                        }
                        TextField{
                            id:tf_kp

                        }
                    }
                    Row{
                        spacing:45
                        Label{
                            text:"Ki"
                        }
                        TextField{
                            id:tf_ki

                        }
                    }
                    Row{
                        spacing:40
                        Label{
                            text:"Kd"
                        }
                        TextField{
                            id:tf_kd

                        }
                    }
                }
                Button{
                    id:btn_send
                    text:"SEND"
                    width: 100
                    height: 100
                    onClicked: {
                        //get data from line
                        mybackend.setB_kp(tf_kp.text)
                        mybackend.setB_ki(tf_ki.text)
                        mybackend.setB_kd(tf_kd.text)
                        mybackend.setB_setpoint(tf_setpoint.text)
                        //send data
                        mybackend.uart_SEND();
                    }
                }
                Button{
                    id:btn_tuning
                    text:"TUNING"
                    width: 100
                    height: 100
                    onClicked: {
                        //send data
                        mybackend.uart_TUNING();
                     }
                }
                Button{
                    id:btn_request
                    text:"REQUEST"
                    width: 100
                    height: 100
                    onClicked: {
                        //send data
                        mybackend.uart_REQUEST();
                        lineSeries1.clear();
                    }
                }
            }

            //chart
            ChartView {
                    id: chartView
                    width: 600
                    height: 400
                    animationOptions: ChartView.NoAnimation
                    antialiasing: true
                    backgroundColor: "#ABAEC5"

                    ValueAxis {
                        id: axisY1
                        min: 0
                        max: 200
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
                        max: 20
                        gridVisible: false
                        color: "black"
                        labelsColor: "black"
                        labelFormat: "%.0f"
                        tickCount: 21
                        titleText:"Time(ms)"
                    }
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
                    LineSeries {
                        id: lineSeries1
                        name: "TUNING POINT"
                        color: "blue"
                        axisX: axisX
                        axisY: axisY1
                    }

                    LineSeries {
                        id: lineSeries2
                        name: "SET POINT"
                        color: "red"

                        axisX: axisX
                        axisY: axisY1

                    }
                }
       //
        }
    }

}
