import QtQuick 2.15

Item {

}
Window {
    width: bg.width
    height: bg.height
    visible: true
    title: qsTr("Hello World")

//    <Button - start>
//    Button{
//        id:button
//        anchors.centerIn: parent; //can ra giua
//        text:"Start";
//        onClicked:{
//        status.text = "Hello World!";
//        }
//    }
//    Text { // text changes when button was clicked
//    id: status
//    x: 180; y: 76
//    font.pixelSize: 20
//    width: 116; height: 26
//    text: "waiting ..."
//    horizontalAlignment: Text.AlignHCenter
//    }

//  <Button - end>

    Item {
    // set width based on given background
        width: bg.width
        height: bg.height
        Image { // nice background image
            id: bg
            source: "mysource/assets/background.png"
        }
        MouseArea {
            id: backgroundClicker
            anchors.fill: parent
            onClicked: {
                circle.x = 84
                box.rotation = 0
                triangle.rotation = 0
                triangle.scale = 1.0
            }
        }
        ClickableImage {
            id: circle
            x: 84; y: 68
            source: "mysource/assets/circle_blue.png"
            antialiasing: true
            onClicked: {
    // increase the x-position on click
                x += 20
            }
        }
        ClickableImage {
            id: box
            x: 164; y: 68
            source: "mysource/assets/box_green.png"
            antialiasing: true
            onClicked: {
        // increase the rotation on click
            rotation += 15
            }
        }
        ClickableImage {
            id: triangle
            x: 248; y: 68
            source: "mysource/assets/triangle_red.png"
            antialiasing: true
            onClicked: {
        // several transformations
            rotation += 15
            scale += 0.05
            }
        }

    }
}

import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: root.width
    height: root.height
    visible: true
    title: qsTr("Hello World")
    Image {
        id: root
        source: "mysource/assets/background.png"
        property int padding: 20
        property int duration: 4000
        property bool running: false
//        Image {
//            id: box
//            x: root.padding;
//            y: (root.height-height)/2
//            source: "mysource/assets/box_green.png"
//            NumberAnimation on x {
//            to: root.width - box.width - root.padding
//            duration: root.duration
//            running: root.running
//            }
//            RotationAnimation on rotation {
//                to: 360
//                duration: root.duration
//                running: root.running
//            }
//        }
//        MouseArea {
//            anchors.fill: parent
//            onClicked: root.running = true
//        }
//    }
    ClickImgV2 {
        id: greenBox
        x: 40; y: root.height-height
        source: "mysource/assets/box_green.png"
        text: "animation on property"
        NumberAnimation on y {
        to: 40; duration: 4000
        }
    }
    ClickImgV2 {
        id: blueBox
        x: (root.width-width)/2; y: root.height-height
        source: "mysource/assets/box_green.png"
        text: "behavior on property"
        Behavior on y {
        NumberAnimation { duration: 4000 }
        }
       // onClicked: y = 40
        // random y on each click
         onClicked: y = 40+Math.random()*
    }
    ClickImgV2 {
        id: redBox
        x: root.width-width-40; y: root.height-height
        source: "mysource/assets/box_green.png"
        onClicked: anim.start()
        // onClicked: anim.restart()
        text: "standalone animation"
        NumberAnimation {
            id: anim
            target: redBox
            properties: "y"
            to: 40
            duration: 4000
        }
    }
}
}
////////////// animation
Window {
    width: 900
    height: 500
    visible: true
    title: qsTr("Hello World")
    BrightSquare {
        id: root
        width: 600
        height: 400
        property int duration: 3000
        property Item ufo: ufo
        Image {
            anchors.fill: parent
            source: "mysource/assets/ufo_background.png"
         }
        ClickImgV3 {
            id: ufo
            x: 20; y: root.height-height
            text: 'ufo'
            source: "mysource/assets/ufo.png"
            onClicked: anim.restart()
            }
       // ParallelAnimation {
        SequentialAnimation{
            id: anim
            NumberAnimation {
                target: ufo
                properties: "y"
                to: 20
                duration: root.duration*0.4
             }
            NumberAnimation {
                target: ufo
                properties: "x"
                to: 400
                duration: root.duration*0.6
            }
        }
    }
}
///////////
