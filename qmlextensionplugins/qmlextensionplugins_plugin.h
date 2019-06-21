#ifndef QMLEXTENSIONPLUGINS_PLUGIN_H
#define QMLEXTENSIONPLUGINS_PLUGIN_H

#include <QQmlExtensionPlugin>

class QmlextensionpluginsPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char *uri) override;
};

#endif // QMLEXTENSIONPLUGINS_PLUGIN_H
