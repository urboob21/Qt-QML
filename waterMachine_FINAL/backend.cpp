#include "backend.h"

BackEnd::BackEnd(QObject *parent)
    : QObject{parent},
      m_waterTemp(NONE),
      m_waterType(NTYPE),
      m_waterSize(NSIZE)

{

}
//---COLD/HOT
//ham thua ke khi tach tu CPPP
BackEnd::WaterTemp BackEnd::waterTemp() const
{
    return m_waterTemp;
}



void BackEnd::setWaterTemp(WaterTemp waterTemp)
{
    if(m_waterTemp==waterTemp)
        return;
    m_waterTemp=waterTemp;
    emit waterTempChanged();
}



//--COLD


//--HOT



BackEnd::WaterType BackEnd::waterType() const
{
    return m_waterType;
}

void BackEnd::setWaterType(const WaterType &newWaterType)
{
    if (m_waterType == newWaterType)
        return;
    m_waterType = newWaterType;
    emit waterTypeChanged();
}

BackEnd::WaterSize BackEnd::waterSize() const
{
    return m_waterSize;
}

void BackEnd::setWaterSize(const WaterSize &newWaterSize)
{
    if (m_waterSize == newWaterSize)
        return;
    m_waterSize = newWaterSize;
    emit waterSizeChanged();
}
