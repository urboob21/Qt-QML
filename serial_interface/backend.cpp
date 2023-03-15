#include "backend.h"
#include "QDebug"
BackEnd::BackEnd(QObject *parent)
    : QObject{parent}
{

}

Q_INVOKABLE BackEnd::UART_connect()
{
    QDebug()<<"Do";
}
