#include "mylib.h"

MyLib::MyLib()
{
}



/*
    float a=[0]*100+[1]*10+[2]/10+[3]/100
*/
void MyLib::float2Ints(float value, uint8_t *r_data)
{ //999.999
    r_data[0]=(uint8_t)(value/10); //r[0]=99
    r_data[1]=(uint8_t)(value-r_data[0]*10); //r[1]=9
    r_data[2]=(uint8_t)((value-(uint8_t)value)*100); //.99
    r_data[3]=(uint8_t)((value-(uint8_t)value)*1000)-r_data[2]*10;
}

