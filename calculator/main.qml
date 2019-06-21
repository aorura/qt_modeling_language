import QtQuick 2.12
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0


ApplicationWindow {
    id: calculator
    title: "Calculator"
    property alias displayText: display.text
    signal keyClicked(int key)
    signal cutTriggered()
    signal copyTriggered()
    signal pasteTriggered()
    signal aboutTriggered()

    Action {
        id: quitAction
        text
    }
}
