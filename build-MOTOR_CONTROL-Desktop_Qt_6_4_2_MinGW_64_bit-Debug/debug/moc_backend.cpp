/****************************************************************************
** Meta object code from reading C++ file 'backend.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.4.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../MOTOR_CONTROL/backend.h"
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'backend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.4.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
namespace {
struct qt_meta_stringdata_BackEnd_t {
    uint offsetsAndSizes[70];
    char stringdata0[8];
    char stringdata1[10];
    char stringdata2[1];
    char stringdata3[10];
    char stringdata4[11];
    char stringdata5[10];
    char stringdata6[13];
    char stringdata7[14];
    char stringdata8[12];
    char stringdata9[12];
    char stringdata10[12];
    char stringdata11[15];
    char stringdata12[10];
    char stringdata13[13];
    char stringdata14[16];
    char stringdata15[16];
    char stringdata16[9];
    char stringdata17[5];
    char stringdata18[10];
    char stringdata19[12];
    char stringdata20[13];
    char stringdata21[10];
    char stringdata22[7];
    char stringdata23[9];
    char stringdata24[6];
    char stringdata25[8];
    char stringdata26[8];
    char stringdata27[8];
    char stringdata28[8];
    char stringdata29[8];
    char stringdata30[8];
    char stringdata31[5];
    char stringdata32[5];
    char stringdata33[5];
    char stringdata34[8];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_BackEnd_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_BackEnd_t qt_meta_stringdata_BackEnd = {
    {
        QT_MOC_LITERAL(0, 7),  // "BackEnd"
        QT_MOC_LITERAL(8, 9),  // "my_signal"
        QT_MOC_LITERAL(18, 0),  // ""
        QT_MOC_LITERAL(19, 9),  // "uart_open"
        QT_MOC_LITERAL(29, 10),  // "uart_close"
        QT_MOC_LITERAL(40, 9),  // "uart_send"
        QT_MOC_LITERAL(50, 12),  // "b_comChanged"
        QT_MOC_LITERAL(63, 13),  // "b_baudChanged"
        QT_MOC_LITERAL(77, 11),  // "b_kpChanged"
        QT_MOC_LITERAL(89, 11),  // "b_kiChanged"
        QT_MOC_LITERAL(101, 11),  // "b_kdChanged"
        QT_MOC_LITERAL(113, 14),  // "b_pointChanged"
        QT_MOC_LITERAL(128, 9),  // "myfuntion"
        QT_MOC_LITERAL(138, 12),  // "UART_connect"
        QT_MOC_LITERAL(151, 15),  // "serialport_read"
        QT_MOC_LITERAL(167, 15),  // "serialport_send"
        QT_MOC_LITERAL(183, 8),  // "uint8_t*"
        QT_MOC_LITERAL(192, 4),  // "tCMD"
        QT_MOC_LITERAL(197, 9),  // "uart_SEND"
        QT_MOC_LITERAL(207, 11),  // "uart_TUNING"
        QT_MOC_LITERAL(219, 12),  // "uart_REQUEST"
        QT_MOC_LITERAL(232, 9),  // "setB_baud"
        QT_MOC_LITERAL(242, 6),  // "b_baud"
        QT_MOC_LITERAL(249, 8),  // "setB_com"
        QT_MOC_LITERAL(258, 5),  // "b_com"
        QT_MOC_LITERAL(264, 7),  // "setB_kp"
        QT_MOC_LITERAL(272, 7),  // "newB_kp"
        QT_MOC_LITERAL(280, 7),  // "setB_ki"
        QT_MOC_LITERAL(288, 7),  // "newB_ki"
        QT_MOC_LITERAL(296, 7),  // "setB_kd"
        QT_MOC_LITERAL(304, 7),  // "newB_kd"
        QT_MOC_LITERAL(312, 4),  // "b_kp"
        QT_MOC_LITERAL(317, 4),  // "b_ki"
        QT_MOC_LITERAL(322, 4),  // "b_kd"
        QT_MOC_LITERAL(327, 7)   // "b_point"
    },
    "BackEnd",
    "my_signal",
    "",
    "uart_open",
    "uart_close",
    "uart_send",
    "b_comChanged",
    "b_baudChanged",
    "b_kpChanged",
    "b_kiChanged",
    "b_kdChanged",
    "b_pointChanged",
    "myfuntion",
    "UART_connect",
    "serialport_read",
    "serialport_send",
    "uint8_t*",
    "tCMD",
    "uart_SEND",
    "uart_TUNING",
    "uart_REQUEST",
    "setB_baud",
    "b_baud",
    "setB_com",
    "b_com",
    "setB_kp",
    "newB_kp",
    "setB_ki",
    "newB_ki",
    "setB_kd",
    "newB_kd",
    "b_kp",
    "b_ki",
    "b_kd",
    "b_point"
};
#undef QT_MOC_LITERAL
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_BackEnd[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
      22,   14, // methods
       6,  180, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      10,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,  146,    2, 0x06,    7 /* Public */,
       3,    0,  147,    2, 0x06,    8 /* Public */,
       4,    0,  148,    2, 0x06,    9 /* Public */,
       5,    0,  149,    2, 0x06,   10 /* Public */,
       6,    0,  150,    2, 0x06,   11 /* Public */,
       7,    0,  151,    2, 0x06,   12 /* Public */,
       8,    0,  152,    2, 0x06,   13 /* Public */,
       9,    0,  153,    2, 0x06,   14 /* Public */,
      10,    0,  154,    2, 0x06,   15 /* Public */,
      11,    0,  155,    2, 0x06,   16 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      12,    0,  156,    2, 0x0a,   17 /* Public */,
      13,    0,  157,    2, 0x0a,   18 /* Public */,
      14,    0,  158,    2, 0x0a,   19 /* Public */,
      15,    1,  159,    2, 0x0a,   20 /* Public */,
      18,    0,  162,    2, 0x0a,   22 /* Public */,
      19,    0,  163,    2, 0x0a,   23 /* Public */,
      20,    0,  164,    2, 0x0a,   24 /* Public */,
      21,    1,  165,    2, 0x0a,   25 /* Public */,
      23,    1,  168,    2, 0x0a,   27 /* Public */,
      25,    1,  171,    2, 0x0a,   29 /* Public */,
      27,    1,  174,    2, 0x0a,   31 /* Public */,
      29,    1,  177,    2, 0x0a,   33 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 16,   17,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   22,
    QMetaType::Void, QMetaType::QString,   24,
    QMetaType::Void, QMetaType::QString,   26,
    QMetaType::Void, QMetaType::QString,   28,
    QMetaType::Void, QMetaType::QString,   30,

 // properties: name, type, flags
      24, QMetaType::QString, 0x00015103, uint(4), 0,
      22, QMetaType::QString, 0x00015103, uint(5), 0,
      31, QMetaType::QString, 0x00015103, uint(6), 0,
      32, QMetaType::QString, 0x00015103, uint(7), 0,
      33, QMetaType::QString, 0x00015103, uint(8), 0,
      34, QMetaType::QPointF, 0x00015103, uint(9), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject BackEnd::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_BackEnd.offsetsAndSizes,
    qt_meta_data_BackEnd,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_BackEnd_t,
        // property 'b_com'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'b_baud'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'b_kp'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'b_ki'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'b_kd'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'b_point'
        QtPrivate::TypeAndForceComplete<QPointF, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<BackEnd, std::true_type>,
        // method 'my_signal'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'uart_open'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'uart_close'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'uart_send'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'b_comChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'b_baudChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'b_kpChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'b_kiChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'b_kdChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'b_pointChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'myfuntion'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'UART_connect'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'serialport_read'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'serialport_send'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<uint8_t *, std::false_type>,
        // method 'uart_SEND'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'uart_TUNING'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'uart_REQUEST'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'setB_baud'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'setB_com'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'setB_kp'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'setB_ki'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'setB_kd'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>
    >,
    nullptr
} };

void BackEnd::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<BackEnd *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->my_signal(); break;
        case 1: _t->uart_open(); break;
        case 2: _t->uart_close(); break;
        case 3: _t->uart_send(); break;
        case 4: _t->b_comChanged(); break;
        case 5: _t->b_baudChanged(); break;
        case 6: _t->b_kpChanged(); break;
        case 7: _t->b_kiChanged(); break;
        case 8: _t->b_kdChanged(); break;
        case 9: _t->b_pointChanged(); break;
        case 10: _t->myfuntion(); break;
        case 11: _t->UART_connect(); break;
        case 12: _t->serialport_read(); break;
        case 13: _t->serialport_send((*reinterpret_cast< std::add_pointer_t<uint8_t*>>(_a[1]))); break;
        case 14: _t->uart_SEND(); break;
        case 15: _t->uart_TUNING(); break;
        case 16: _t->uart_REQUEST(); break;
        case 17: _t->setB_baud((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 18: _t->setB_com((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 19: _t->setB_kp((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 20: _t->setB_ki((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 21: _t->setB_kd((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::my_signal; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::uart_open; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::uart_close; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::uart_send; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::b_comChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::b_baudChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::b_kpChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::b_kiChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::b_kdChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 8;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (_t _q_method = &BackEnd::b_pointChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 9;
                return;
            }
        }
    }else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<BackEnd *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->b_com(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->b_baud(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->b_kp(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->b_ki(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->b_kd(); break;
        case 5: *reinterpret_cast< QPointF*>(_v) = _t->b_point(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<BackEnd *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setB_com(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setB_baud(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setB_kp(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setB_ki(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setB_kd(*reinterpret_cast< QString*>(_v)); break;
        case 5: _t->setB_point(*reinterpret_cast< QPointF*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *BackEnd::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *BackEnd::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_BackEnd.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int BackEnd::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 22)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 22;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 22)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 22;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void BackEnd::my_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void BackEnd::uart_open()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void BackEnd::uart_close()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void BackEnd::uart_send()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void BackEnd::b_comChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void BackEnd::b_baudChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void BackEnd::b_kpChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void BackEnd::b_kiChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void BackEnd::b_kdChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}

// SIGNAL 9
void BackEnd::b_pointChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 9, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
