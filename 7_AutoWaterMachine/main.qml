import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
Window {
    width: 1024
    height: 680
    visible: true
    title: qsTr("Water App")

    StackView{
        id:stvmain
        anchors.fill: parent
        initialItem: "HotColdSelect.qml"
    }
    StaBar{
        opacity: 0.8
        id:statusbar
        anchors{
            top:parent.top
            horizontalCenter: parent.horizontalCenter  //can le trai phai
        }
    }

}
