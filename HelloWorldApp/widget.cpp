#include "widget.h"
#include <QApplication>
#include <QPushButton>

Widget::Widget(QWidget *parent)
    : QWidget(parent)
{
    QPushButton *quit = new QPushButton("Quit", this); // F1: help
    quit->resize(75,35);
    //quit->show();
    /*QObject::*/connect(quit, SIGNAL(clicked()), this, SLOT(slotQuit()));
}

void Widget::slotQuit()
{
    qApp->quit();
}

Widget::~Widget()
{

}
