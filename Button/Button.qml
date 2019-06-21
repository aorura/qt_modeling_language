import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
    id: root

    property alias text: label.text
    signal clicked

 //   x:12; y:12
    width: 116; height: 26
    color: "lightsteelblue"
    border.color: "slategrey"
    Text {
        id: label
        anchors.centerIn: parent
        text: "Start"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
            //status.text = "Button clicked!"
        }
    }
}

// ctr-a, ctr-a 들여쓰기
