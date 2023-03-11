#ifndef BACKEND_H
#define BACKEND_H
#include <qqml.h>

#include <QObject>

class BackEnd : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    //my qproperty
    Q_PROPERTY(WaterTemp waterTemp READ waterTemp WRITE setWaterTemp NOTIFY waterTempChanged)
    Q_PROPERTY(WaterType waterType READ waterType WRITE setWaterType NOTIFY waterTypeChanged)
    Q_PROPERTY(WaterSize waterSize READ waterSize WRITE setWaterSize NOTIFY waterSizeChanged)

public:
    explicit BackEnd(QObject *parent = nullptr);
    //my enum
    enum WaterTemp{
        NONE,
        COLD,
        HOT
    };
    Q_ENUM(WaterTemp);

    enum WaterType{
        NTYPE,
        TYPE1,
        TYPE2,
        TYPE3
    };
    Q_ENUM(WaterType);

    enum WaterSize{
        NSIZE,
        SIZE1,
        SIZE2,
        SIZE3
    };
    Q_ENUM(WaterSize);

    //
    WaterTemp waterTemp() const;



    WaterType waterType() const;


    WaterSize waterSize() const;


public slots:
    void setWaterTemp(WaterTemp waterTemp);
void setWaterSize(const WaterSize &newWaterSize);
void setWaterType(const WaterType &newWaterType);
signals:
    void waterTempChanged();

    void waterTypeChanged();

    void waterSizeChanged();

private:
    WaterTemp m_waterTemp;
    WaterType m_waterType;
    WaterSize m_waterSize;
};

#endif // BACKEND_H
