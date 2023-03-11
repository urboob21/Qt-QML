import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import BackEnd 1.0
Window {
    width: 1024
    height: 680
    visible: true
    title: qsTr("Water App")
    BackEnd{
        id:mybackend
        onWaterTempChanged: {

            if(mybackend.waterTemp===BackEnd.COLD)
                return console.log("Select Cold Water");
            else if(mybackend.waterTemp===BackEnd.HOT)
                return  console.log("Select Hot Water");
            else if(mybackend.waterTemp===BackEnd.NONE)
                return console.log("Chon Lai COLD/HOT")
        }
        onWaterTypeChanged: {
            if(mybackend.waterTemp===BackEnd.COLD)
            {
                if(mybackend.waterType===BackEnd.TYPE1)
                    return console.log("Select Cocacola");
                else if(mybackend.waterType===BackEnd.TYPE2)
                    return  console.log("Select Pepsi");
                else if(mybackend.waterType===BackEnd.TYPE3)
                    return console.log("Select Cold Water")
            }
            else  if(mybackend.waterTemp===BackEnd.HOT)
            {
                if(mybackend.waterType===BackEnd.TYPE1)
                    return console.log("Select Coffee");
                else if(mybackend.waterType===BackEnd.TYPE2)
                    return  console.log("Select Tea");
                else if(mybackend.waterType===BackEnd.TYPE3)
                    return console.log("Select Hot Water")
            }
            if(mybackend.waterType===BackEnd.NTYPE)
                return console.log("Chon lai Type")
        }
        onWaterSizeChanged:{
            if(mybackend.waterSize===BackEnd.SIZE1)
                return console.log("Select 12oz");
            else if(mybackend.waterSize===BackEnd.SIZE2)
                return console.log("Select 16oz");
            else if(mybackend.waterSize===BackEnd.SIZE3)
                return console.log("Select 22oz");
            else if(mybackend.waterSize===BackEnd.NSIZE)
                return console.log("Chon Lai SIZE")
        }
    }
    StackView{
        id:stvmain
        anchors.fill: parent
        initialItem: "HotColdSelect.qml"
    }
    StaBar{
        id:statusbar
        anchors{
            top:parent.top
            horizontalCenter: parent.horizontalCenter  //can le trai phai
        }
    }

}
