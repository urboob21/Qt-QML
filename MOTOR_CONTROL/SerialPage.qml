import QtQuick
import QtQuick.Controls 2.15
import MyBackEnd 1.0

Rectangle{
    id:page_serial
    color:"#C9CDEA"
    Image{
        id:pic
        source:"qrc:/pictures/logo.jpg"
        height: parent.height
        width: parent.width
        fillMode: Image.PreserveAspectFit
    }

    GroupBox{
        id:gb_serial
        title: "Serial"
        anchors{
            left: parent.left
            top:parent.top
            leftMargin: 20
            topMargin: 20
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
                text:btn_connect_name
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    //ngon
                    mybackend.setB_com(cbb_com.currentText)
                    mybackend.setB_baud(cbb_baud.currentText)
                    mybackend.UART_connect()
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
