import QtQuick 2.15

Rectangle{
    id:root
    width:150;height: 40;
    color:'gray'
    border.color:'black'
    signal clicked          //khi click vung nhan chuot ->  sig nal ~ -> click o lop button duoc goi ???
    radius:20
    //thuoc tinh text co the thay doi boi lop cha, dung alias tham chieu
    property alias text :   label.text
    Text{
            id:label
            text:"Button Name"  // dung parent.text
            font.pixelSize: 20
           // horizontalAlignment: Text.AlignHCenter //do text ke thua thuoc
            //tinh w h cua lop cha nen k co w va h nen khong th can theo
            // thuoc tinh cua ban than no
            anchors.centerIn: parent
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
        root.clicked()  //xuat một signal ?
        }
    }
}

