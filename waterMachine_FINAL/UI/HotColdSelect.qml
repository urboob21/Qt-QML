import QtQuick 2.15
import BackEnd 1.0
Item {
   Rectangle{
       height: parent.height
       width:parent.width/2
       color: "#EE1C25"
       anchors{
           top:parent.top
           left:parent.left
       }
       Image{
           id:hotImg
           anchors.centerIn: parent
           width: 256;height: 256
           source:"qrc:/UI/Assets/hot.png"
       }
       Text{
           text:"HOT"
           anchors{
               topMargin: 40
               top:hotImg.bottom
               horizontalCenter: parent.horizontalCenter
           }

           font.pixelSize: 96
           color:"#FF5440"
           font.bold: true
       }
       MouseArea{
           anchors.fill: parent
           onClicked: {
               mybackend.setWaterTemp(BackEnd.HOT)
               stvmain.push("TempStyle.qml")
           }
       }
   }

   Rectangle{
       height: parent.height
       width:parent.width/2
       color: "#1DA6BF"
       anchors{
           top:parent.top
            right:parent.right
       }
       Image{
           id:coldImg
           anchors.centerIn: parent
           width: 256;height: 256
           source:"qrc:/UI/Assets/snowflake.png"
       }
       Text{
           text:"COLD"
           anchors{
               topMargin: 40
               top:coldImg.bottom
               horizontalCenter: parent.horizontalCenter
           }

           font.pixelSize: 96
           color:"#7ACDF9"
           font.bold: true
       }
       MouseArea{
           anchors.fill: parent
           onClicked: {
               mybackend.setWaterTemp(BackEnd.COLD)
               stvmain.push("TempStyle.qml")
           }
       }
   }
}
