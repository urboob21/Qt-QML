import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import BackU 1.0
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string a;
    BackEnd{
        id:mybackend

        onUserNameChanged: {
            a=userName;
            console.log("Ban vua nhap: "+a)
        }
        onMyffalse: {
            console.log("false")
        }
        onMyftrue: {
            console.log("true")
        }


    }
    Label{
        text:"Hay nhap: Hello Word"
        anchors{
            bottom: tech.top
            bottomMargin: 20
            horizontalCenter: parent.horizontalCenter
        }
    }

    TextField {
            id:tech
            text: mybackend.userName
            placeholderText: qsTr("User name")
            anchors.centerIn: parent
            onEditingFinished: mybackend.userName = text
            }
    Button{
        anchors{
            top: tech.bottom
            topMargin: 20
            horizontalCenter: parent.horizontalCenter
        }
        text:"Check"
           onClicked: {
                mybackend.myfuntion(tech.text);
                  }

    }
}
