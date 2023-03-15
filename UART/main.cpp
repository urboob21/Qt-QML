#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "backend.h"
#include <QApplication>
#include <QtCharts>
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    qmlRegisterType<BackEnd>("BackEnd",1,0,"BackEnd");
    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/UART/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
