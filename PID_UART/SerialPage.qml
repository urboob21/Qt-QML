import QtQuick
import QtQuick.Controls 2.15

Rectangle{
    id:page_serial
    GroupBox{
        id:gb_serial
        title: "Serial"
        anchors{
            centerIn:parent
        }
        Column{
            spacing: 20
            Row{
                spacing:50
                Label{
                    text:"COM"
                }
                ComboBox{
                    id:cbb_com
                    model: ["COM1", "COM2", "COM3","COM4"]
                }

            }
            Row{
                spacing:20
                Label{
                    text:"BAUDRATE"
                }
                ComboBox{
                    id:cbb_baud
                    model: ["9600", "19200", "115200"]
                }
            }
            Button{
                id:btn_connect
                text:"CONNECT"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    //ngon
                    if (cbb_baud.currentText==="9600")
                        console.log("9600")
                    if (cbb_com.currentText==="COM1")
                        console.log("COM 1")
                }
            }
        }
    }

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
            m_stackview.push("TuningPage.qml")
        }
    }

}
