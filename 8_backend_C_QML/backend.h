#ifndef BACKEND_H
#define BACKEND_H
#include <qqml.h>  //QML_ELEMENT ?
#include <QObject>
#include <QString>

class BackEnd : public QObject   //back end thua ke tu lop OBject de QML hieu
{
    Q_OBJECT   //marco defaut
    QML_ELEMENT
    Q_PROPERTY(QString userName READ userName WRITE setuserName NOTIFY userNameChanged)
    //Q_PROPERTY: chi ra cac thuoc tinh co the truy cap tu QML
public:
    explicit BackEnd(QObject *parent = nullptr);        //contructor  prototype
    //
    QString userName();
    void setuserName(QString const &username);
   Q_INVOKABLE void myfuntion(QString const &text);



 //

signals: //de emit phat ra: -> void do st ( emit userNameChanged() khi du lieu thay doi -> QML handle: onusernameChang
    void userNameChanged();
    void myftrue();
    void myffalse();


private:
    QString m_userName; //day la cai thong tin quan trong, truy cap thong qua ham noi bo back end
};



#endif // BACKEND_H
