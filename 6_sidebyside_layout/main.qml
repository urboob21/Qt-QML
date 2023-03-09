import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Stack Form")
//    header:/*ToolBar{
//        height: 40;
//        width: parent.width
//        Text {
//            anchors.centerIn: parent
//            id: name
//            text: swipv.currentItem.title
//            font.pixelSize: Qt.application.font.pixelSize * 2
//            padding: 10

//        }
//    }*/
    header:Label {
                  text: swipv.currentItem.title
                  font.pixelSize: Qt.application.font.pixelSize * 2
                  padding: 10
              }

    SwipeView{
        id:swipv
        anchors.fill: parent
        Home{}
        About{}
        Profile{}
        EndSwip{}
    }
    PageIndicator {
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    currentIndex: swipv.currentIndex
    count: swipv.count
    }
}
