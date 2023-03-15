#ifndef BACKEND_H
#define BACKEND_H
#include <qqml.h>
#include <QObject>

class BackEnd : public QObject
{
    Q_OBJECT
public:
    explicit BackEnd(QObject *parent = nullptr);
public slots:
    Q_INVOKABLE UART_connect();

signals:

};

#endif // BACKEND_H
