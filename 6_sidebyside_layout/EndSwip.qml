import QtQuick 2.15
import QtQuick.Controls 2.15
Page{
    title:qsTr("Endpage")
    Label{
        anchors.centerIn: parent
        text: qsTr("End")
    }
    Button{
        anchors.bottom: parent.bottom
        text:"Back Home"
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottomMargin: 5
        onClicked: {
            swipv.setCurrentIndex(0);

        }

    }
}

