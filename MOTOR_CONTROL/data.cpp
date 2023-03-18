#include "data.h"

Data::Data(QObject *parent)
    : QObject{parent}
{

}

QPointF Data::udata() const
{
    return m_udata;
}

void Data::setUdata(QPointF newUdata)
{
    if (m_udata == newUdata)
        return;
    m_udata = newUdata;
    emit udataChanged();
}
