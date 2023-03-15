#include "backend.h"
#include <QDebug>
BackEnd::BackEnd(QObject *parent)
    : QObject{parent}
{

}

QString BackEnd::b_com() const
{
    return mb_com;
}

QString BackEnd::b_baud() const
{
    return mb_baud;
}

void BackEnd::setB_baud(const QString &b_baud)
{
    if (mb_baud == b_baud)
        return;
    mb_baud = b_baud;
    emit b_baudChanged();
}

void BackEnd::setB_com(const QString &b_com)
{
    if(mb_com==b_com)
        return;
    mb_com=b_com;
    emit b_comChanged();
}

///
Q_INVOKABLE void BackEnd::UART_connect(){
    qDebug()<<"Da ket noi in BackEnd";
    if(!(serialp->isOpen()))
    {
        serialp->setPortName(BackEnd::mb_com);
        if(BackEnd::mb_baud=="9600")
            serialp->setBaudRate(QSerialPort::Baud9600);
        serialp->setDataBits(QSerialPort::Data8);
        serialp->setParity(QSerialPort::NoParity);
        serialp->open(QIODevice::ReadWrite);

        connect(serialp,SIGNAL(readyRead()),this,SLOT(serialport_read()));
        //emit signal da ket noi
        emit uart_open();
    }
    else if(serialp->isOpen())
    {
        serialp->close();
        //emitsignal da ngat ket noi
        emit uart_close();

    }
}
//SEND CMD
Q_INVOKABLE void BackEnd::uart_SEND(){
    //send
    //(1)get data from input QString
    //qDebug()<<" Kp:"<<m_b_kp<<" Ki:"<<m_b_ki<<" Kd:"<<m_b_kd;

    //(2) QString to float
    float f_kp=m_b_kp.toFloat();
    float f_ki=m_b_ki.toFloat();
    float f_kd=m_b_kd.toFloat();
    // float toarray
    serialport_send(pSPID);
} //SEND PID value

Q_INVOKABLE void BackEnd::uart_TUNING(){

    serialport_send(pCTUN);
} //SEND Tuning pid


Q_INVOKABLE void BackEnd::uart_REQUEST(){

    serialport_send(pGPID);
} //SEND request <- STM


Q_INVOKABLE void BackEnd::serialport_read()
{


}
Q_INVOKABLE void BackEnd::serialport_send(uint8_t* tCMD){
    if(!(serialp->isOpen()))
    {
        qDebug()<<"Chua ket noi UART";
        return;

    }
    else
    {
    //CMD = ?
        for(int i=0;i<4;i++)
    pCMD[i]=tCMD[i];
    //memcpy data
    quint8 index=0;
    memcpy(protocol+index,&pSTX,1);
    index=index+sizeof(pSTX);
    memcpy(protocol+index,pCMD,sizeof(pCMD));
    index=index+sizeof(pCMD);
    memcpy(protocol+index,pOPT,sizeof(pOPT));
    index=index+sizeof(pOPT);
    memcpy(protocol+index,pDATA,sizeof(pDATA));
    index=index+sizeof(pDATA);
    memcpy(protocol+index,&pWR,sizeof(pWR));
    index=index+sizeof(pWR);
    memcpy(protocol+index,&pETX,sizeof(pETX));
    index=index+sizeof(pETX);
    //sent data
    serialp->write(protocol,index);


    //emit
    emit uart_send();
    }
}
 //test....
void BackEnd::floatto2Array(float value,uint8_t* r_value){
    float temp;
    r_value[0]=(uint8_t)value;
    temp=value-(float)r_value[0];
            temp*=10;
            r_value[1]=(uint8_t)temp;
} //<255>.<9>  -> byte[0] * byte[1]/10

void BackEnd::floatto3Array(float value, uint8_t *r_value)
{
    float temp;
    r_value[0]=(uint8_t)value;
    temp=value-(float)r_value[0];
            temp*=10;
            r_value[1]=(uint8_t)temp;
}
//...test

QString BackEnd::b_kp() const
{
    return m_b_kp;
}

void BackEnd::setB_kp(const QString &newB_kp)
{
    if (m_b_kp == newB_kp)
        return;
    m_b_kp = newB_kp;
    emit b_kpChanged();
}

QString BackEnd::b_ki() const
{
    return m_b_ki;
}

void BackEnd::setB_ki(const QString &newB_ki)
{
    if (m_b_ki == newB_ki)
        return;
    m_b_ki = newB_ki;
    emit b_kiChanged();
}

QString BackEnd::b_kd() const
{
    return m_b_kd;
}

void BackEnd::setB_kd(const QString &newB_kd)
{
    if (m_b_kd == newB_kd)
        return;
    m_b_kd = newB_kd;
    emit b_kdChanged();
}
