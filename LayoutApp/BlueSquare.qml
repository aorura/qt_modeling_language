import QtQuick 2.0

Rectangle {
    color: "blue"
    width:48;height:48
    property alias text: label.text

    Text {
        id: label
        anchors.centerIn: parent
        text: ''
    }
}
