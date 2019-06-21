#ifndef FILEDATA_H
#define FILEDATA_H

#include <QObject>

class FileData : public QObject
{
    Q_OBJECT
public:
    explicit FileData(QObject *parent = nullptr);
    ~FileData();

    Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
    QString text();

private:
    QString m_Filename;

signals:
    void textChanged();

public slots:
    void setText(QString str);
    void setFilename(QString str);
};

#endif // FILEDATA_H
