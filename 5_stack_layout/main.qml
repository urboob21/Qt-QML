import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Stack Form")
    //header
    header:ToolBar{
        //icon open drawer
        contentHeight: toolbtn.implicitHeight
        ToolButton{
            id:toolbtn
            text:stackview.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if(stackview.depth>1)
                {
                    stackview.pop()
                }
                else
                drawer.open()
            }
        }

        //label
        Label{
            text:stackview.currentItem.title
            anchors.centerIn: parent
        }

    }

    //drawer
    Drawer{
        id: drawer
        width: parent.width*0.6
        height: parent.height

        Column{
            anchors.fill:parent
            ItemDelegate{
                text:qsTr("About")
                width: parent.width
                onClicked:{
                    stackview.push(about)  //cac1 : with coponent
                    drawer.close()
                }
            }
            ItemDelegate{
                text:qsTr("Profile")
                width: parent.width
                onClicked: {
                   // stackview.push("Profile.qml")  //cach 2
                    stackview.push(profile)
                    drawer.close()
                }
            }
        }


    }

    //pages
    //stack view: seen firts - push on
    StackView{
        id:stackview
        anchors.fill: parent
        initialItem: Home{}
    }

    //component
    Component{
        id:about
        About {}
    }
    Component{
        id:profile
        Profile {}
    }
//    Component{
//        id:profile
//        About {}
//    }
}
