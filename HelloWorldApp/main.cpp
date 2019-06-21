/* how to install qt
   qt -     mingw64
   tools -  mingw64
            qt create */

/*
#include <QApplication>
#include <QLabel>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QLabel *hello = new QLabel("<font color=blue>"
                "Hello <i>QT!</i></font>", 0);
    hello->resize(175,35);
    hello->show();
    return a.exec();
}
*/

/*
#include <QApplication>
#include <QPushButton>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QPushButton *quit = new QPushButton("Quit", 0); // F1: help
    quit->resize(75,35);
    quit->show();
    QObject::connect(quit, SIGNAL(clicked()), &a, SLOT(quit()));

    return a.exec();
}
*/

#include <QApplication>
#include <QPushButton>
#include <Widget.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Widget w;
    w.show();

    return a.exec();
}

