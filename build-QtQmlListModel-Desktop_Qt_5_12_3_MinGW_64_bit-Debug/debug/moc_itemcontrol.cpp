/****************************************************************************
** Meta object code from reading C++ file 'itemcontrol.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../QtQmlListModel/itemcontrol.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'itemcontrol.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ItemControl_t {
    QByteArrayData data[7];
    char stringdata0[51];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ItemControl_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ItemControl_t qt_meta_stringdata_ItemControl = {
    {
QT_MOC_LITERAL(0, 0, 11), // "ItemControl"
QT_MOC_LITERAL(1, 12, 10), // "logPrinted"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 8), // "printLog"
QT_MOC_LITERAL(4, 33, 9), // "ItemState"
QT_MOC_LITERAL(5, 43, 4), // "STOP"
QT_MOC_LITERAL(6, 48, 2) // "GO"

    },
    "ItemControl\0logPrinted\0\0printLog\0"
    "ItemState\0STOP\0GO"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ItemControl[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       1,   26, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   24,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   25,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,

 // enums: name, alias, flags, count, data
       4,    4, 0x2,    2,   31,

 // enum data: key, value
       5, uint(ItemControl::ItemState::STOP),
       6, uint(ItemControl::ItemState::GO),

       0        // eod
};

void ItemControl::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ItemControl *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->logPrinted(); break;
        case 1: _t->printLog(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (ItemControl::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ItemControl::logPrinted)) {
                *result = 0;
                return;
            }
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject ItemControl::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_ItemControl.data,
    qt_meta_data_ItemControl,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *ItemControl::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ItemControl::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ItemControl.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int ItemControl::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void ItemControl::logPrinted()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
