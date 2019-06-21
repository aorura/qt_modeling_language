#include "qmlextensionplugins_plugin.h"
#include "timemodel.h"

#include <qqml.h>

void QmlextensionpluginsPlugin::registerTypes(const char *uri)
{
    // @uri com.mycompany.qmlcomponents
    qmlRegisterType<TimeModel>(uri, 1, 0, "Time");
}

