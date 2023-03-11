#ifndef SYSTEMCONTROLER_H
#define SYSTEMCONTROLER_H

#include <QObject>
#include <qqml.h>
class SystemControler : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(HotColdType nHotColdType READ nHotColdType WRITE setNHotColdType NOTIFY nHotColdTypeChanged)
public:
    explicit SystemControler(QObject *parent = nullptr);
    enum HotColdType{
        NONE,
        HOT,
        COLD
    };
    Q_ENUM(HotColdType);
    HotColdType nHotColdType() const;
    //void slot


    void setNHotColdType(HotColdType nHotColdType);
    HotColdType nHotColdType(HotColdType nHotColdType);

    //signals
signals:
    void nHotColdTypeChanged();

    //private
private:  
    HotColdType m_nHotColdType;
};

#endif // SYSTEMCONTROLER_H
