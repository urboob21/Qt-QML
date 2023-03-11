import QtQuick 2.15
import BackEnd 1.0
Rectangle{
    id:page_temp
    color:{
        if(mybackend.waterTemp===BackEnd.COLD)
            return "#1DA6BF";
        else if(mybackend.waterTemp===BackEnd.HOT)
            return "#EE1C25";
    }

    Column{
        anchors{
            left: parent.left
            bottom: parent.bottom
            leftMargin: 20
        }
        Image{
            id:back_icon
            width: 100;height: 100
            anchors{

            }
            source:{
                if(mybackend.waterTemp===BackEnd.HOT)
                    return "qrc:/UI/Assets/previous-hot.png";
                else if(mybackend.waterTemp===BackEnd.COLD)
                    return "qrc:/UI/Assets/previous-cold.png";
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    stvmain.pop();
                    mybackend.setWaterTemp(BackEnd.NONE)
                }
            }
        }
        Text{
            font.pixelSize: 32
            text:"Back"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Row{
        anchors.centerIn:parent
        spacing: 38
        Rectangle{
            id:circle_left
            width: 300
            height:300
            radius: 150
            color:"#D9D9D9"
            Image{
                id:img_left
                width: 180;height: 180
                anchors.centerIn: parent
                source:{
                    if(mybackend.waterTemp===BackEnd.HOT)
                        return "qrc:/UI/Assets/coffee-beans.png";
                    else if(mybackend.waterTemp===BackEnd.COLD)
                        return "qrc:/UI/Assets/coke.png";
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mybackend.setWaterType(BackEnd.TYPE1)
                    stvmain.push("TypeStyle.qml")
                }
            }
        }
        Rectangle{
            id:circle_center
            width: 300
            height:300
            radius: 150
            color:"#D9D9D9"
            Image{
                id:img_center
                width: 180;height: 180
                anchors.centerIn: parent
                source:{
                    if(mybackend.waterTemp===BackEnd.HOT)
                        return "qrc:/UI/Assets/green-tea.png";
                    else if(mybackend.waterTemp===BackEnd.COLD)
                        return "qrc:/UI/Assets/dose.png";
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mybackend.setWaterType(BackEnd.TYPE2)
                    stvmain.push("TypeStyle.qml")
                }
            }
        }
        Rectangle{
            id:circle_right
            width: 300
            height:300
            radius: 150
            color:"#D9D9D9"
            Image{
                id:img_right
                width: 180;height: 180
                anchors.centerIn: parent
                source:{
                    if(mybackend.waterTemp===BackEnd.HOT)
                        return "qrc:/UI/Assets/water-hot.png";
                    else if(mybackend.waterTemp===BackEnd.COLD)
                        return "qrc:/UI/Assets/cold-water.png";
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mybackend.setWaterType(BackEnd.TYPE3)
                    stvmain.push("TypeStyle.qml")
                }
            }
        }

    }
}
