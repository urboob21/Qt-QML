import QtQuick 2.15
import BackEnd 1.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15


Rectangle{
    id:page_end
    color:{
        if(mybackend.waterTemp===BackEnd.COLD)
            return "#1DA6BF";
        else if(mybackend.waterTemp===BackEnd.HOT)
            return "#EE1C25";
    }

    Timer{
        id:mytim2
        running:false
        onTriggered: {
                stvmain.pop()
                stvmain.pop()
                stvmain.pop()
                stvmain.pop()
                mybackend.setWaterType(BackEnd.NTYPE)
                mybackend.setWaterSize(BackEnd.NSize)
                mybackend.setWaterTemp(BackEnd.NONE)
        }
        interval:3000
    }
    Component.onCompleted:  mytim2.start();

    Text{
        text:"Enjoy!"
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
    Image{
        id:fina_img
        source:"qrc:/UI/Assets/checked.png"
        width: 300
        height: 300
        anchors{
            top:parent.top
         //   left:parent.left
            topMargin: 121
            horizontalCenter: parent.horizontalCenter
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            stvmain.pop();
            stvmain.pop();
            stvmain.pop();
            stvmain.pop();
            mybackend.setWaterType(BackEnd.NTYPE)
            mybackend.setWaterSize(BackEnd.NSize)
            mybackend.setWaterTemp(BackEnd.NONE)
        }
    }
}
