import QtQuick
import QtQuick.Controls 2.15
import QtCharts 2.15

Rectangle {
    anchors.margins: 5
    id:root
    //layout
    Column{
        spacing: 5
        Row{
            spacing: 5
            GroupBox{
                id:box_1
                font.pixelSize: 15
                title: "Operation"
                width: 400
                height: 450
                //contents

                Row{
                    spacing: 10
                    Column{
                        spacing:5
                        Label{
                            height: 35
                            text:"PosRef (Unit)      "
                            font.pixelSize: 20
                        }
                        Label{
                            height: 35
                            text:"VelMax (Unit/Sec)  "
                            font.pixelSize: 20
                        }
                        Label{
                            height: 35
                            text:"AccMax (Unit/Sec^2)"
                            font.pixelSize: 20
                        }

                         Rectangle{

                             width: 200
                             height: 50
                         }

                        Button{
                            text:"MOTION"
                            id:btn_motion
                            width: 150
                            height: 35
                            font.pixelSize: 20
                        }
                        Button{
                            text:"SENDSETTING"
                            id:btn_sendst
                            width: 150
                            height: 35
                            font.pixelSize: 20
                        }
                        Button{
                            text:"RUN"
                            id:btn_run
                            width: 150
                            height: 35
                            font.pixelSize: 20
                        }
                        Button{
                            text:"GET"
                            id:btn_get
                            width: 150
                            height: 35
                            font.pixelSize: 20
                        }

                    }
                    Column{
                        spacing: 5
                        TextField{
                            id:tf_pos
                            width: 100
                            height: 35
                            font.pixelSize: 20
                        }
                        TextField{
                            id:tf_vel
                            width: 100
                            height: 35
                            font.pixelSize: 20
                        }
                        TextField{
                            id:tf_acc
                            width: 100
                            height: 35
                            font.pixelSize: 20
                        }
                    }

                }



                //
            }
            GroupBox{
                id:box_2
                font.pixelSize: 15
                title:"Chart View"
                width: 615
                height: 450
//my chart
                ChartView {
                        id: cV_vel
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


//
            }
        }
        GroupBox
        {
            font.pixelSize: 15
            id:box_3
            title:"Control"
            width:parent.width
                height:140

        }

    }

    //back button
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
}
