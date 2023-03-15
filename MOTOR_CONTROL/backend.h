#ifndef BACKEND_H
#define BACKEND_H
//
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QObject>
#include <qqml.h>
#include <stdint.h>

//
class BackEnd : public QObject
{
    //COM/BAUD
    Q_PROPERTY(QString b_com READ b_com WRITE setB_com NOTIFY b_comChanged)
    Q_PROPERTY(QString b_baud READ b_baud WRITE setB_baud NOTIFY b_baudChanged)
    //KPID
    Q_PROPERTY(QString b_kp READ b_kp WRITE setB_kp NOTIFY b_kpChanged)
    Q_PROPERTY(QString b_ki READ b_ki WRITE setB_ki NOTIFY b_kiChanged)
    Q_PROPERTY(QString b_kd READ b_kd WRITE setB_kd NOTIFY b_kdChanged)

    Q_OBJECT
public:
    explicit BackEnd(QObject *parent = nullptr);
//
    QSerialPort *serialp = new QSerialPort;
    QString b_com() const;
    QString b_baud() const;
    QString b_kp() const;
    QString b_kd() const;
    QString b_ki() const;
//my protocol - 18bytes
/*----------------------------------------------------------------------
|STX |   CMD   |OPTION |DATA  |R   /   W|ETX |
|0x02|  4bytes |3bytes |8bytes|0x16/0x06|0x03|


-------------------------------------------------------------------------*/
    char protocol[18];
    uint8_t pSTX={0x02};
    uint8_t pETX={0x03};
    uint8_t pRW={0x06};
    uint8_t pWR={0x16};
    uint8_t pSPID[4]={0x53,0x50,0x49,0x44}; //ASCII {SPID}
     uint8_t pCTUN[4]={0x43,0x54,0x55,0x4E}; //ASCII
      uint8_t pGPID[4]={0x47,0x50,0x49,0x44}; //ASCII
    uint8_t pCMD[4]={0x00,0x00,0x00,0x00};
  //  uint8_t pGPID[4]={}
    uint8_t pOPT[3]={0x00,0x00,0x00};
    uint8_t pDATA[8]={0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

















public slots:
    //my f
    Q_INVOKABLE void UART_connect();
    Q_INVOKABLE void serialport_read();
    Q_INVOKABLE void serialport_send(uint8_t* tCMD);
    //mode controls
    Q_INVOKABLE void uart_SEND();
    Q_INVOKABLE void uart_TUNING();
    Q_INVOKABLE void uart_REQUEST();
    void floatto2Array(float value,uint8_t* r_value);
    void floatto3Array(float value,uint8_t* r_value);

    //
    void setB_baud(const QString &b_baud);
    void setB_com(const QString &b_com );
    void setB_kp(const QString &newB_kp);
    void setB_ki(const QString &newB_ki);
    void setB_kd(const QString &newB_kd);
signals:
    //mysignal
    void uart_open();
    void uart_close();

    void uart_send();
    //
    void b_comChanged();
    void b_baudChanged();

    //
    void b_kpChanged();

    void b_kiChanged();

    void b_kdChanged();

private:
    QString mb_com;
    QString mb_baud;
    QString m_b_kp;
    QString m_b_ki;
    QString m_b_kd;
};

#endif // BACKEND_H
