import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TextBox{
        id:text1
        anchors{
            top:parent.top
            left: parent.left
        }
        width: 200
        height: 100
        text:"haha"
    }
    RowLayout  {
        spacing:10
        Button {
            text: "Ok"
            onPressed: model.submit()
            Layout.fillWidth: true
            enabled: false

        }
        Button {
            text: "Cancel"
            onClicked: model.revert()
        }
        TextField {
            id: field
            placeholderText: "TextField"

            //anchors.horizontalCenter: parent.horizontalCenter
        }

        }
    }



