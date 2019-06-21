#ifndef DATAELEMENT_H
#define DATAELEMENT_H

#include <QObject>

class DataElement : public QObject
{
    Q_OBJECT
public:
    explicit DataElement(QObject *parent = nullptr);
    DataElement(const QString &name, const QString &color, QObject *parent=0);
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString color READ color WRITE setColor NOTIFY colorChanged)

    QString name() const;
    void setName(const QString &name);

    QString color() const;
    void setColor(const QString &color);

signals:
    void nameChanged();
    void colorChanged();

public slots:
    void changeColor();

private:
    QString m_name;
    QString m_color;
    int count;

public:
    enum class DataState {RED, GREEN, BLEU, YELLOW};
    Q_ENUM(DataState)
    DataState m_state;
};

#endif // DATAELEMENT_H
