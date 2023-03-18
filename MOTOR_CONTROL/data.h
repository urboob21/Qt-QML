#ifndef DATA_H
#define DATA_H

#include <QObject>
#include <QPointF>
class Data : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QPointF udata READ udata WRITE setUdata NOTIFY udataChanged)
public:
    explicit Data(QObject *parent = nullptr);

    QPointF udata() const;
    void setUdata(QPointF newUdata);

signals:

    void udataChanged();
private:
    QPointF m_udata;
};

#endif // DATA_H
