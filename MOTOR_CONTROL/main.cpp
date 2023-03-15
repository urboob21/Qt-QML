#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include <QtCharts>
#include <QQuickStyle>
#include <backend.h>
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    qmlRegisterType<BackEnd>("MyBackEnd",1,0,"BackEnd");
    //qmlRegisterType<QObject Name>("Name import",1,0,"Name Component");
    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
