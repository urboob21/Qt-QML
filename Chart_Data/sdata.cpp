#include "sdata.h"
#include "data.h"
SData::SData(QObject *parent)
    : QObject{parent}
{
    a=0;
}
void SData::myfuntion(){
    for(int i=0;i<10;i++)
    {
       a=a+0.1;
    }
}
