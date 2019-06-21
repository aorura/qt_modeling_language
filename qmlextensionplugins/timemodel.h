#ifndef TIMEMODEL_H
#define TIMEMODEL_H

#include <QObject>
#include <QDateTime>
#include <minutetimer.h>

class TimeModel : public QObject
{
    Q_OBJECT
    //Q_DISABLE_COPY(TimeModel)

    Q_PROPERTY(int hour READ hour NOTIFY timeChanged)
    Q_PROPERTY(int minute READ minute NOTIFY timeChanged)



public:
    TimeModel(QObject *parent = 0);
    ~TimeModel();

    int minute() const;
    int hour() const;

    Q_INVOKABLE void printLog();

signals:
    void timeChanged();

public slots:
    void changeTime();

private:
    static MinuteTimer *timer;
    static int instances;
};

#endif // TIMEMODEL_H
