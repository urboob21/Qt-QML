import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 150
    height: 400
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: root
        width: 150
        height: 400

        property color black: '#1f1f21'
        property color red: '#fc3d39'
        property color green: '#53d769'


        gradient: Gradient {
            GradientStop { position: 0.0; color: "#2ed5fa" }
            GradientStop { position: 1.0; color: "#2467ec" }
        }

        Rectangle {
            id: light1
            x: 25; y: 15
            width: 100; height: width
            radius: width/2
            color: root.black
            border.color: Qt.lighter(color, 1.1)
        }

        Rectangle {
            id: light2
            x: 25; y: 135
            width: 100; height: width
            radius: width/2
            color: root.black
            border.color: Qt.lighter(color, 1.1)
        }


    //STATE: trang thay-> thay doi thuoc tinh cac target dua vao state
        state:"stop"
    states:[
            State{
            name:"stop"
            PropertyChanges {
                target: light1
                color:root.red
            }
            PropertyChanges {
                target: light2
                color:root.black
            }
        },
         State{
        name:"start"
        PropertyChanges {
            target: light1
            color:root.black
        }
        PropertyChanges {
            target: light2
            color:root.green
        }
    }
    ]
        MouseArea{
            anchors.fill:parent
            onClicked:{
                if(parent.state=="start")
                {
                    parent.state="stop"
                }
                else
                    parent.state="start"
             }
        }

            //TRANSITION:hieu ung chuyen canh
        transitions: [
            Transition {
                from: "stop"; to: "start"
    //            from: "*"; to: "*"
                ColorAnimation { target: light1; to:parent.black; duration: 2000 }
                ColorAnimation { target: light2; to:parent.green; duration: 2000 }
            },
            Transition {
                from: "start"; to: "stop"
    //            from: "*"; to: "*"
                ColorAnimation { target: light1; to:parent.red; duration: 2000 }
                ColorAnimation { target: light2; to:parent.black; duration: 2000 }
            }
        ]
//        // <<M4

    }
}

