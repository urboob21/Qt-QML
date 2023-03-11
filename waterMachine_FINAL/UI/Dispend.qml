import QtQuick 2.15
import BackEnd 1.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15


Rectangle{
    id:page_temp
    color:{
        if(mybackend.waterTemp===BackEnd.COLD)
            return "#1DA6BF";
        else if(mybackend.waterTemp===BackEnd.HOT)
            return "#EE1C25";
    }
    Text{
        text:"DISPENDING"
        anchors{
            bottom: parent.bottom
            bottomMargin: 68
            horizontalCenter: parent.horizontalCenter
        }

        font.pixelSize: 96
        color:{
            if(mybackend.waterTemp===BackEnd.COLD)
                return "#7ACDF9";
            else if(mybackend.waterTemp===BackEnd.HOT)
                return "#FF5440";
        }

        font.bold: true
    }


    BusyIndicator{
        id:bindicate
        width: 300
            height:300
            anchors{
                top:parent.top
             //   left:parent.left
                topMargin: 121
                horizontalCenter: parent.horizontalCenter
            }
    }

    Timer{
        id:mytim
        running:false
        onTriggered: stvmain.push("EndPage.qml")
        interval:2000
    }
    Component.onCompleted:  mytim.start();

}






//Rectangle{
//    id:my_xx
//        Rectangle{
//            id:cir_1
//            width: 300
//            height: 300
//            radius: 150
//            color: "#D9D9D9"
//            anchors{
//                bottom: parent.bottom
//                bottomMargin: 256
//                horizontalCenter: parent.horizontalCenter
//            }
//        }
//        Rectangle{
//            id:cir_2
//            width: 270
//            height: 270
//            radius: 270/2
//            color:{
//                if(mybackend.waterTemp===BackEnd.COLD)
//                    return "#1DA6BF";
//                else if(mybackend.waterTemp===BackEnd.HOT)
//                    return "#EE1C25";
//            }
//            anchors{
//                bottom: parent.bottom
//                bottomMargin: 271
//                horizontalCenter: parent.horizontalCenter
//            }
//        }
//        Rectangle{
//            id:rec_rotation
//            width: 200
//            height: 200
//            color:{
//                if(mybackend.waterTemp===BackEnd.COLD)
//                    return "#1DA6BF";
//                else if(mybackend.waterTemp===BackEnd.HOT)
//                    return "#EE1C25";
//            }
//            anchors{
//                top:parent.top
//                left:parent.left
//                bottomMargin: 406
//                topMargin:  74
//                leftMargin:512
//                rightMargin: 312
//            }
//        }
//}


