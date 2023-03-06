import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Button{
        id:button
        anchors.centerIn: parent; //can ra giua
        text:"Start";
        onClicked:{
        status.text = "Hello World!";
        }
    }
    Text { // text changes when button was clicked
    id: status
    x: 180; y: 76
    font.pixelSize: 20
    width: 116; height: 26
    text: "waiting ..."
    horizontalAlignment: Text.AlignHCenter
    }
}
