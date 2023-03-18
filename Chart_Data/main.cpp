#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "data.h"
#include <QApplication>
#include <QQmlContext>
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.rootContext()->setContextProperty("dataFromCpp", new Data());
    engine.load(url);

    return app.exec();



}
