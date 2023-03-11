import QtQuick 2.15
import BackEnd 1.0


Rectangle{
    id:page_type
    property color circle_x:{
        if(mybackend.waterTemp===BackEnd.HOT)
            return "#8F0707";
        else if(mybackend.waterTemp===BackEnd.COLD)
            return "#1B5A97";
    }

    state:"NSIZE"
    states:[
        State {
            name: "NSIZE"
            PropertyChanges {
                target: circle_left1
                color:"#D9D9D9"
            }
            PropertyChanges {
                target: circle_center2
                color:"#D9D9D9"
            }
            PropertyChanges {
                target: circle_right3
                color:"#D9D9D9"
            }
        },
        //
        State {
            name: "SIZE1"
            PropertyChanges {
                target: circle_left1
                color:circle_x
            }
            PropertyChanges {
                target: circle_center2
                color:"#D9D9D9"
            }
            PropertyChanges {
                target: circle_right3
                color:"#D9D9D9"
            }
        },
        //
        State {
            name: "SIZE2"
            PropertyChanges {
                target: circle_left1
                color:"#D9D9D9"
            }
            PropertyChanges {
                target: circle_center2
                color:circle_x
            }
            PropertyChanges {
                target: circle_right3
                color:"#D9D9D9"
            }
        },
        State {
            name: "SIZE3"
            PropertyChanges {
                target: circle_left1
                color:"#D9D9D9"
            }
            PropertyChanges {
                target: circle_center2
                color:"#D9D9D9"
            }
            PropertyChanges {
                target: circle_right3
                color:circle_x
            }
        }

    ]




    color:{
        if(mybackend.waterTemp===BackEnd.COLD)
            return "#1DA6BF";
        else if(mybackend.waterTemp===BackEnd.HOT)
            return "#EE1C25";
    }
    property url cup:{
        if(mybackend.waterTemp===BackEnd.COLD)
            return "qrc:/UI/Assets/cold-glass.png";
        else if(mybackend.waterTemp===BackEnd.HOT)
            return "qrc:/UI/Assets/hot-glass.png";}
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
                    mybackend.setWaterType(BackEnd.NTYPE)
                }
            }
        }
        Text{
            font.pixelSize: 32
            text:"Back"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    Rectangle{
        id:start_btn
        color:"#D9D9D9"
        height: 140
        width: 140
        radius:70
        anchors{
            bottom:parent.bottom
            bottomMargin: 18
            horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:"START"
            anchors.centerIn: parent
            font.pixelSize: 32
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(mybackend.waterSize===BackEnd.NSIZE)
                    return;
            stvmain.push("Dispend.qml")
            }
        }
    }


// s- over
    Column{
        anchors{
            right: parent.right
            bottom: parent.bottom
            rightMargin: 20
        }
        Image{
            id:over_icon
            width: 100;height: 100
            anchors{

            }
            source:{
                if(mybackend.waterTemp===BackEnd.HOT)
                    return "qrc:/UI/Assets/refresh-hot.png";
                else if(mybackend.waterTemp===BackEnd.COLD)
                    return "qrc:/UI/Assets/refresh-cold.png";
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                   stvmain.pop();
                    stvmain.pop();
                    mybackend.setWaterType(BackEnd.NTYPE)
                    mybackend.setWaterSize(BackEnd.NSize)
                    mybackend.setWaterTemp(BackEnd.NONE)
                }
            }
        }
        Text{
            font.pixelSize: 32
            text:"S Over"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    //
    Row{
        anchors.centerIn:parent
        spacing: 38
        Rectangle{
            id:circle_left1
            width: 300
            height:300
            radius: 150
            color:"#D9D9D9";
            Image{
                id:img_left1
                width: 120;height: 120
                anchors.centerIn: parent
                source:cup
            }
            MouseArea{
                anchors.fill: circle_left1
                onClicked: {
                    //truyendata xuong
                    //set
                    //neu== -> set NONE ,
                    if(mybackend.waterSize!==BackEnd.SIZE1)
                    {
                    mybackend.setWaterSize(BackEnd.SIZE1);
                        page_type.state="SIZE1"
                    }
                    else if(mybackend.waterSize===BackEnd.SIZE1)
                    {
                     mybackend.setWaterSize(BackEnd.NSIZE);
                        page_type.state="NSIZE"
                    }
                }
            }
        }
        Rectangle{
            id:circle_center2
            width: 300
            height:300
            radius: 150
            color:"#D9D9D9"
            Image{
                id:img_center2
                width: 160;height: 160
                anchors.centerIn: parent
                source:cup
            }
            MouseArea{
                anchors.fill: circle_center2
                onClicked: {
                    //truyendata xuong
                    //set
                    //neu== -> set NONE ,
                    if(mybackend.waterSize!==BackEnd.SIZE2)
                    {
                    mybackend.setWaterSize(BackEnd.SIZE2);
                        page_type.state="SIZE2"
                    }
                    else if(mybackend.waterSize===BackEnd.SIZE2)
                    {
                     mybackend.setWaterSize(BackEnd.NSIZE);
                        page_type.state="NSIZE"
                    }
                }
            }
        }
        Rectangle{
            id:circle_right3
            width: 300
            height:300
            radius: 150
            color:"#D9D9D9"
            Image{
                id:img_right3
                width: 200;height: 200
                anchors.centerIn: parent
                source:cup
            }
            MouseArea{
                anchors.fill: circle_right3
                onClicked: {
                    //truyendata xuong
                    //set
                    //neu== -> set NONE ,
                    if(mybackend.waterSize!==BackEnd.SIZE3)
                    {
                    mybackend.setWaterSize(BackEnd.SIZE3);
                        page_type.state="SIZE3"
                    }
                    else if(mybackend.waterSize===BackEnd.SIZE3)
                    {
                     mybackend.setWaterSize(BackEnd.NSIZE);
                        page_type.state="NSIZE"
                    }
                }
            }
        }

    }
}

