#include "filedata.h"

#include <QByteArray>
#include <QFile>
#include <QUrl>
#include <QDebug>

FileData::FileData(QObject *parent) : QObject(parent)
{

}

FileData::~FileData() {}

void FileData::setFilename(QString str)
{
    QUrl url(str);
    m_Filename = url.toLocalFile();
}

QString FileData::text()
{
    qDebug() << m_Filename;
    QFile file(m_Filename);
    if (!file.open(QIODevice::ReadOnly)) return "";

    QByteArray text = file.readAll();
    file.close();

    return QString(text);
}

void FileData::setText(QString str)
{
    qDebug() << m_Filename;
    QFile file(m_Filename);

    if (!file.open(QIODevice::WriteOnly | QIODevice::Truncate)) return;

    QByteArray text;
    text.append(str);
    file.write(text);
    file.close();
}
