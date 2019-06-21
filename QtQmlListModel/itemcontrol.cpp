#include "itemcontrol.h"
#include <QQmlEngine>

ItemControl::ItemControl(QObject *parent) : QObject(parent)
{
    qmlRegisterType<ItemControl>("io.qt.ItemControl",1,0,"ItemControl");
}

void ItemControl::printLog()
{
    qDebug("Log Printed");
    emit logPrinted();
}
