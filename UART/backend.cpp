#include "backend.h"
#include <QDebug>
#include "QSerialPort"
#include "QSerialPortInfo"
BackEnd::BackEnd(QObject *parent)
    : QObject{parent}
{

}

Q_INVOKABLE void BackEnd::UART_connect()
{
    qDebug()<<"do something in backend";
    {


        if(!(serialp->isOpen()))
        {
            serialp->setPortName("COM1");
            serialp->setBaudRate(QSerialPort::Baud9600);
            serialp->setDataBits(QSerialPort::Data8);
            serialp->setParity(QSerialPort::NoParity);
            serialp->open(QIODevice::ReadWrite);

            connect(serialp,SIGNAL(readyRead()),this,SLOT(serialport_read()));
            //emit signal da ket noi
            emit uart_open();
        }
        else if(serialp->isOpen())
        {
            serialp->close();
            //emitsignal da ngat ket noi
            emit uart_close();

        }

    }
}

Q_INVOKABLE void BackEnd::serialport_read()
{

}
