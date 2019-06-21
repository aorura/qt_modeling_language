import QtQuick 2.12
import QtQuick.Window 2.12

Image {
    id: root
    source: "images/background.png"
    Image {
        id: wheel
        anchors.centerIn: parent
        width: parent.width * 0.4
        height: width
        source: "images/pinwheel.png"
        Behavior on rotation {
            NumberAnimation {
                duration: 2000
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: wheel.rotation += 360

    }
}



