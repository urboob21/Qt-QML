#include "backend.h"

BackEnd::BackEnd(QObject *parent)   //contructor implemetation
    : QObject{parent}
{

}

QString BackEnd::userName()
{
    return m_userName;
}

void BackEnd::setuserName(const QString &username)
{
    if(username==m_userName)
        return;

    m_userName=username;
    emit userNameChanged();
}

Q_INVOKABLE void BackEnd::myfuntion(const QString &text)
{
    if(text=="Hello Word")
        emit myftrue();
    else
        emit myffalse();
}

