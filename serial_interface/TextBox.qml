import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

GroupBox {
    title: qsTr("CMD DATA")
    ScrollView{
        anchors.fill: parent
        ScrollBar.horizontal.policy:ScrollBar.AlwaysOff
        TextArea {
            id:textArea
            anchors.fill: parent
            padding: 5
            wrapMode: TextArea.Wrap
            }
        }
    }






