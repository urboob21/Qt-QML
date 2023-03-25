import QtQuick
import QtQuick.Controls 2.15
import MyBackEnd 1.0
Window {
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")
    //btn_conect name
    property string btn_connect_name: "Connect"


    //stackview
   StackView {
       id:m_stackview
       anchors.fill:parent
       initialItem: "SerialPage.qml"
   }

    BackEnd{
        id:mybackend

        //UART-signal
        onUart_close: {
            btn_connect_name="Connect"
            console.log("Da ngat ket noi in FrontEnd");
        }

        onUart_open: {
           console.log("Da  ket noi in FrontEnd");
            btn_connect_name="DisConnect"
        }
    }

}
