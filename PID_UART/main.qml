import QtQuick
import QtQuick.Controls 2.15
Window {
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")

   StackView {
       id:m_stackview
       anchors.fill:parent
       initialItem: "SerialPage.qml"
   }
}
