#include "minutetimer.h"
#include <QDebug>


MinuteTimer::MinuteTimer(QObject *parent) : QObject(parent)
{

}


void MinuteTimer::start() {
    if (!timer.isActive()) {
        time = QTime::currentTime();
        timer.start(60000-time.second()*1000,this);
    }
}

void MinuteTimer::stop() {
    timer.stop();
}

int MinuteTimer::hour() const {
    return time.hour();
}

int MinuteTimer::minute() const {
    return time.minute();
}

void MinuteTimer::timerEvent(QTimerEvent *) {
    qDebug() << "timeEvent";
    QTime now = QTime::currentTime();
    if (now.second() == 59 && now.minute() == time.minute() && now.hour() == time.hour()) {
        time.addSecs(60);
        timer.start(60500, this);
    } else {
        time = now;
        timer.start(60000-time.second()*1000,this);
    }

    emit timeChanged();
}
