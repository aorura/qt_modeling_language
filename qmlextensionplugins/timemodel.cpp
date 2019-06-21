#include "timemodel.h"
#include <QCoreApplication>
#include <QDebug>

int TimeModel::instances = 0;
MinuteTimer *TimeModel::timer = 0;

TimeModel::TimeModel(QObject *parent):
    QObject(parent)
{
    // By default, QQuickItem does not draw anything. If you subclass
    // QQuickItem to create a visual item, you will need to uncomment the
    // following line and re-implement updatePaintNode()

    // setFlag(ItemHasContents, true);
    if (++instances == 1) {
        if(!timer)
            timer = new MinuteTimer(QCoreApplication::instance());
        connect(timer, SIGNAL(timeChanged()), this, SIGNAL(timeChanged()));
        timer->start();
    }
}

TimeModel::~TimeModel()
{
    if(--instances == 0) {
        timer->stop();
    }
}

int TimeModel::minute() const {
    return timer->minute();
}

int TimeModel::hour() const {
    return timer->hour();
}

void TimeModel::printLog()
{
    qDebug() << timer->minute();
}

void TimeModel::changeTime() {
    emit timeChanged();
}
