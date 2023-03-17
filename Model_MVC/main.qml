import QtQuick
import QtQuick.Controls 2.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    //model list QML
    ListModel{
        id:my_qmlmode
        ListElement{
            index:0
            name:"box1"
            colorName:"black"
        }
        ListElement{
            name:"box2"
            index:1
            colorName:"green"
        }
        ListElement{
            name:"box3"
            index:2
            colorName:"yellow"
        }
    }
    ListView{
        id:mylist
        anchors.fill: parent
        model: my_qmlmode
        delegate: Rectangle{
            width: 50
            height: 50
            color: colorName
        }
    }
    //model list from C++: QStringList / QVariant
    /* .cpp
            #include <QQmlContext>

 QQmlApplicationEngine engine;
 QStringList my_model;
 my_model.append("Item 1");
 my_model.append("Item 2");
 my_model.append("Item 3");
 engine.rootContext()->setContextProperty("MyListModel",QVariant::fromValue(my_model));
    */
    ListView{
        anchors.fill: parent
        model: MyListModel
        delegate: Rectangle{
            width: 50
            height: 50
            Text{text:modelData}
        }
    }

}




