import QtQuick 2.0

Image {
    property alias blood : blood;
    x:0; y:parent.height;
    width: parent.width-5; height: width
    source: "images/beanbird.png"
    fillMode: Image.PreserveAspectFit

    Image {
        id: blood
        width: parent.width-10; height: width
        source: "images/blood.png"
        visible: false
        fillMode: Image.PreserveAspectFit
    }

    Behavior on y {
        NumberAnimation {
            easing.type: Easing.OutCubic
            duration: 800; alwaysRunToEnd: false
            onRunningChanged: { y = parent.height }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            blood.visible = true
            punchSound.play()
            catchedBird++
        }
    }
}
