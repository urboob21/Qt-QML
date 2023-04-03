import QtQuick 2.15

Rectangle{
    id:statusBar
    width: 600;
    height: 60;
    color:"black"
    radius: 5
    Rectangle{
        id:notifiBadge
        width: 50;
        height: 50;
        radius: width/2
        color:"white"
        anchors{
            left:parent.left
            verticalCenter: parent.verticalCenter //can le tren duoi
           leftMargin: 5
        }
        Text{
            text:"3"
            color:"black"
            font.pixelSize: 40
            anchors.centerIn: parent
        }
    }
    Text{
        id:timeText
        anchors.centerIn: parent
        text:"12:32 PM"
        color:"white"
        font.pixelSize: 40

    }

    Image{
        id:wifisymb
        width:50
        height: 50
        anchors{
            verticalCenter: parent.verticalCenter
            right:parent.right
            rightMargin: 5
        }
        source:"qrc:/UI/Assets/wifi.png"
    }


}
