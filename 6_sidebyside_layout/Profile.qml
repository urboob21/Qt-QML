import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Page{
    title:qsTr("Profile")
    Column{
        anchors.centerIn: parent
        spacing: 20
        Label{
            anchors.horizontalCenter: parent.horizontalCenter
            text:qsTr("This's Profile Page")
        }
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text:qsTr("Edit")
            onClicked:stackview.push("EditProfile.qml")
        }
    }
}
