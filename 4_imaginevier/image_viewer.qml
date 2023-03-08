import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.2
ApplicationWindow {
    width: 640
    height: 480
    visible:true
    background:Rectangle{
        color:"darkGray"
    }
    //component image when open -> fit window, true : delay but good quality
    Image{
        id:image
        //source ?? -> import from dialog
        anchors.fill:parent
        fillMode: Image.PreserveAspectFit
        asynchronous: true
    }
    //header
//    header:ToolBar{
//        Flow{
//            anchors.fill:parent
//            ToolButton{
//                text: qsTr("Open")
//                icon.name:"document-open"
//                onClicked:fileOpenDialog.open()  //Dialog module. use to open,save,pick
//            }
//        }
//    }
    FileDialog{
        id:fileOpenDialog
        title: "Select an imager file"
        folder: shortcuts.documents
        nameFilters: [
        "Image files (*.png *.jpeg *.jpg)",
        ]
        onAccepted: {
        image.source = fileOpenDialog.fileUrl
        }
    }
    //
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")   //&file &open enable: search: atl F  , atl O
            MenuItem {
                text: qsTr("Open...")
                icon.name: "document-open"
                onTriggered: fileOpenDialog.open()
            }
        }
        Menu {
            title: qsTr("&Help")
            MenuItem {
                text: qsTr("&About...")
                onTriggered: aboutDialog.open()
            }
        }
    }
    Dialog {
        id: aboutDialog
        title: qsTr("About")
        Label {
            anchors.fill: parent
            text: qsTr("QML Image Viewer\nA part of the QmlBook\nhttp://qmlbook.org
            ˓→")
            horizontalAlignment: Text.AlignHCenter
        }
        standardButtons: StandardButton.Ok
    }

}
