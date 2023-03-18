#include "data.h"

Data::Data(QObject *parent)
    : QObject{parent}
{
    m_wTimer = new QTimer(this);
        m_wTimer->setInterval((1000 / 5)); //set T timer
        connect(m_wTimer, &QTimer::timeout, this, &Data::wTimeout);
        m_wTimer->start();
  //  connect(myobject, SData::cutdata, this, &Data::saveData);
}

void Data::saveData(){

}
void Data::wTimeout(){
    int HIGH = 100;
    int LOW = 0;
    int val = rand() % (HIGH - LOW + 1) + LOW;
    m_wValue.setX(m_wValue.x()+1);
    m_wValue.setY(val);
    emit wValueChanged();
}
