#include <QGuiApplication>
#include <QQmlContext>
#include <QQuickView>
#include "itemcontrol.h"
#include "dataelement.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    ItemControl *itemControl = new ItemControl;

    QList<QObject*> dataList;
    dataList.append(new DataElement("Item 1", "red"));
    dataList.append(new DataElement("Item 2", "green"));
    dataList.append(new DataElement("Item 3", "blue"));
    dataList.append(new DataElement("Item 4", "yellow"));

    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    QQmlContext *ctxt = view.rootContext();
    ctxt->setContextProperty("myModel", QVariant::fromValue(dataList));
    ctxt->setContextProperty("myItem", QVariant::fromValue(itemControl));
    view.setSource(QUrl("qrc:main.qml"));
    view.show();

    return app.exec();
}
