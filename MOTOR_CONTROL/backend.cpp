#include "backend.h"

#include <QDebug>
/*------------  constructer data --------------*/
BackEnd::BackEnd(QObject *parent)
    : QObject{parent}
{

}

 /*------------  UART --------------*/
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

Q_INVOKABLE void BackEnd::UART_connect(){
    qDebug()<<"Da ket noi in BackEnd";
    if(!(serialp->isOpen()))
    {
        serialp->setPortName(BackEnd::mb_com);
        if(BackEnd::mb_baud=="9600")
            serialp->setBaudRate(QSerialPort::Baud9600);
        else if(BackEnd::mb_baud=="115200")
            serialp->setBaudRate(QSerialPort::Baud115200);
        serialp->setDataBits(QSerialPort::Data8);
        serialp->setParity(QSerialPort::NoParity);
        serialp->open(QIODevice::ReadWrite);

        //conect signal read with my handle funtion
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

//cmd : SEND  PID value
Q_INVOKABLE void BackEnd::uart_SEND(){
    uint8_t sKp[4];
    uint8_t sKi[4];
    uint8_t sKd[4];

    //(1) QString to float
    float f_kp=m_b_kp.toFloat();
    float f_ki=m_b_ki.toFloat();
    float f_kd=m_b_kd.toFloat();

    //(2) float to 4bytes array
    mylib.float2Ints(f_kp,sKp);
    mylib.float2Ints(f_ki,sKi);
    mylib.float2Ints(f_kd,sKd);

    int index=0;
    memcpy(pDATA,sKp,sizeof(sKp));
    index=index+sizeof(sKp);
    memcpy(pDATA+index,sKi,sizeof(sKi));
    index=index+sizeof(sKi);
    memcpy(pDATA+index,sKd,sizeof(sKd));

    serialport_send(pSPID);
}

//cmd : SNED TUNING PID
Q_INVOKABLE void BackEnd::uart_TUNING(){
    serialport_send(pCTUN);
} //SEND Tuning pid

//cmd : GET  POSITION
Q_INVOKABLE void BackEnd::uart_REQUEST(){

    serialport_send(pGPID);
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
        memcpy(protocol+index,&pETX,sizeof(pETX));
        index=index+sizeof(pETX);
        //sent data
        serialp->write(protocol,index);

        //emit
        emit uart_send();
        qDebug()<<"data send:"<<protocol <<pDATA;
    }
}


Q_INVOKABLE void BackEnd::serialport_read()
{

    QByteArray data_rv;
    int size =serialp->bytesAvailable();
    if(size>=400)   //check full datas before read  - or read buffer make error
    {
        qDebug()<<"realdata";
        data_rv=serialp->readAll();
        {
            float x_index=0;
            qDebug()<<"Nhan data thanh cong";
            for(int i=0;i<200;i++)
            {
                x_index+=0.1;
                uint16_t data=0;
                data=(((uint16_t)data_rv[2*i]<<8)&0xFF00)|((uint16_t)(data_rv[2*i+1])&0x00FF);
                f_data.setX(x_index);
                f_data.setY(data);
                setB_point(f_data);
            }
        }

    }
}



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

QPointF BackEnd::b_point() const
{
    return m_b_point;
}

void BackEnd::setB_point(QPointF newB_point)
{
    if (m_b_point == newB_point)
        return;
    m_b_point = newB_point;
    emit b_pointChanged(); //tin hieu set o duoi qml
}

Q_INVOKABLE void BackEnd::myfuntion(){

}

///
QString BackEnd::b_setpoint() const
{
    return m_b_setpoint;
}

void BackEnd::setB_setpoint(const QString &newB_setpoint)
{
    if (m_b_setpoint == newB_setpoint)
        return;
    m_b_setpoint = newB_setpoint;
    emit b_setpointChanged();
}
