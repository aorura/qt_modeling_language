#include "dataelement.h"
#include <QDebug>
#include <QTimer>

DataElement::DataElement(QObject *parent) : QObject(parent)
{

}

DataElement::DataElement(const QString &name, const QString &color, QObject *parent) : QObject(parent), m_name(name), m_color(color) {
    qDebug("DataElement");
    count = 0;
    QTimer* timer = new QTimer;
    connect(timer, SIGNAL(timeout()), SLOT(changeColor()));
    timer->start(1000);
}

void DataElement::changeColor() {
    qDebug("changeColor");
    count = m_name.right(1).toInt();
    switch(count++%4) {
    case 0: setName("Item 1"); setColor("red"); break;
    case 1: setName("Item 2"); setColor("green"); break;
    case 2: setName("Item 3"); setColor("blue"); break;
    case 3: setName("Item 4"); setColor("yellow"); break;
    }
}

QString DataElement::name() const
{
    return m_name;
}

void DataElement::setName(const QString &name)
{
    if (name != m_name) {
        m_name = name;
        emit nameChanged();
    }
}

QString DataElement::color() const
{
    return m_color;
}

void DataElement::setColor(const QString &color)
{
    if (color != m_color) {
        m_color = color;
        emit colorChanged();
    }
}
