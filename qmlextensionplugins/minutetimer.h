#ifndef MINUTETIMER_H
#define MINUTETIMER_H

#include <QObject>
#include <QDateTime>
#include <QBasicTimer>

class MinuteTimer : public QObject
{
    Q_OBJECT
public:
    explicit MinuteTimer(QObject *parent = nullptr);

    void start();
    void stop();
    int hour() const;
    int minute() const;

signals:
    void timeChanged();

protected:
    void timerEvent(QTimerEvent *);

private:
    QTime time;
    QBasicTimer timer;

public slots:
};

#endif // MINUTETIMER_H
