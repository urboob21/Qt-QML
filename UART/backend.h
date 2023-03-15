#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QtSerialPort>

class BackEnd : public QObject
{
    Q_OBJECT
public:
    explicit BackEnd(QObject *parent = nullptr);
    QSerialPort *serialp = new QSerialPort;
public slots:
   Q_INVOKABLE void UART_connect();
   Q_INVOKABLE void serialport_read();
signals:
   void uart_open();
   void uart_close();

};

#endif // BACKEND_H
