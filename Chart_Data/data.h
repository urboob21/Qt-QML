#ifndef DATA_H
#define DATA_H

#include <QObject>
#include <QObject>
#include <QPointF>
#include <QTimer>
#include <sdata.h>
class Data : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QPointF wValue READ wValue NOTIFY wValueChanged)
public:
    explicit Data(QObject *parent = nullptr);
    QPointF wValue() const{
            return m_wValue;
        }
signals:
    void wValueChanged();
private slots:
    void wTimeout();
    void saveData();
private:
    QTimer * m_wTimer;
    QPointF m_wValue;
    SData *myobject;
};


#endif // DATA_H
