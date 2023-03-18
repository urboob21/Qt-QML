#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "mylib/mylib.h"
#include <QDebug>
#include     <stdint.h>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    MyLib t_mylib;

    QQmlApplicationEngine engine;
    QStringList my_model;
    my_model.append("Item 1");
    my_model.append("Item 2");
    my_model.append("Item 3");
    //

    //#include "mylib/mylib.h"
    MyLib t_mylib;
    float a=123.323;
    uint8_t temp[4];
    t_mylib.float2Ints(a,temp);
    qDebug()<<temp[0]<<temp[1]<<temp[2]<<temp[3];

    //
    engine.rootContext()->setContextProperty("MyListModel",QVariant::fromValue(my_model) );
    const QUrl url(u"qrc:/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);




    return app.exec();

}
