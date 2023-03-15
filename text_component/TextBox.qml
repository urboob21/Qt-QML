import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


    Rectangle{
        id:text_box
        width: 120
        height: 230
        color: "#cbcbcb"
        anchors.centerIn: parent
        border.width: 2
        border.color: "#444444"
        property alias text: textArea.text


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



