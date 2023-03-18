#ifndef MYLIB_H
#define MYLIB_H

#include "MyLib_global.h"

class MYLIB_EXPORT MyLib
{
public:
    MyLib();
    void float2Ints(float value, uint8_t* r_data);
};

#endif // MYLIB_H
