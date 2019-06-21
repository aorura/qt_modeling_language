#ifndef ITEMCONTROL_H
#define ITEMCONTROL_H

#include <QObject>

class ItemControl : public QObject
{
    Q_OBJECT
public:
    enum class ItemState { STOP, GO };
    Q_ENUM(ItemState);
    ItemState m_state;

    explicit ItemControl(QObject *parent = nullptr);

signals:
    void logPrinted();

public slots:
    void printLog();
};
Q_DECLARE_METATYPE(ItemControl::ItemState)  // qml쪽에서 호출하려면 메크로 선언해야 함.

#endif // ITEMCONTROL_H
