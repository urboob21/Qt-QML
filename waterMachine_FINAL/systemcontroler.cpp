#include "systemcontroler.h"


SystemControler::SystemControler(QObject *parent)
    : QObject{parent}
    ,m_nHotColdType(NONE)
{

}
//
void setNHotColdType(HotColdType nHotColdType)
{
    if(nHotColdType==m_nHotColdType)
            return;
    nHotColdType=m_nHotColdType;

    //emit

}

HotColdType nHotColdType(HotColdType nHotColdType)
{
    return m_nHotColdType;
}
