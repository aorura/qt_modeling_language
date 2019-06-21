/****************************************************************************
** Meta object code from reading C++ file 'dataelement.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../QtQmlListModel/dataelement.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'dataelement.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_DataElement_t {
    QByteArrayData data[12];
    char stringdata0[93];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_DataElement_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_DataElement_t qt_meta_stringdata_DataElement = {
    {
QT_MOC_LITERAL(0, 0, 11), // "DataElement"
QT_MOC_LITERAL(1, 12, 11), // "nameChanged"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 12), // "colorChanged"
QT_MOC_LITERAL(4, 38, 11), // "changeColor"
QT_MOC_LITERAL(5, 50, 4), // "name"
QT_MOC_LITERAL(6, 55, 5), // "color"
QT_MOC_LITERAL(7, 61, 9), // "DataState"
QT_MOC_LITERAL(8, 71, 3), // "RED"
QT_MOC_LITERAL(9, 75, 5), // "GREEN"
QT_MOC_LITERAL(10, 81, 4), // "BLEU"
QT_MOC_LITERAL(11, 86, 6) // "YELLOW"

    },
    "DataElement\0nameChanged\0\0colorChanged\0"
    "changeColor\0name\0color\0DataState\0RED\0"
    "GREEN\0BLEU\0YELLOW"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_DataElement[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       2,   32, // properties
       1,   40, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x06 /* Public */,
       3,    0,   30,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   31,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,

 // properties: name, type, flags
       5, QMetaType::QString, 0x00495103,
       6, QMetaType::QString, 0x00495103,

 // properties: notify_signal_id
       0,
       1,

 // enums: name, alias, flags, count, data
       7,    7, 0x2,    4,   45,

 // enum data: key, value
       8, uint(DataElement::DataState::RED),
       9, uint(DataElement::DataState::GREEN),
      10, uint(DataElement::DataState::BLEU),
      11, uint(DataElement::DataState::YELLOW),

       0        // eod
};

void DataElement::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<DataElement *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->nameChanged(); break;
        case 1: _t->colorChanged(); break;
        case 2: _t->changeColor(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (DataElement::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataElement::nameChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (DataElement::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataElement::colorChanged)) {
                *result = 1;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<DataElement *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->name(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->color(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<DataElement *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setName(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setColor(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject DataElement::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_DataElement.data,
    qt_meta_data_DataElement,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *DataElement::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *DataElement::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_DataElement.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int DataElement::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void DataElement::nameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void DataElement::colorChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
