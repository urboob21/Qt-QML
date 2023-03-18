#ifndef SDATA_H
#define SDATA_H

#include <QObject>

class SData : public QObject
{
    Q_OBJECT
public:
    explicit SData(QObject *parent = nullptr);
    void myfuntion();
signals:
    void cutdata();
private:
    float a;
};

#endif // SDATA_H
