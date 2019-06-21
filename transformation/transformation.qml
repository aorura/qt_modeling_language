import QtQuick 2.12


Item {
    width: bg.width
    height: bg.height

    Image {
        id: bg
        width:400;height:250
        source: "background.jpg"
    }

    ClickableImage {
        id: rocket1
        source: "rocket.png"
        x:40; y:200
        text: "animation on property"
        NumberAnimation on y {
            to: 40; duration: 4000
        }
    }
/*
    ClickableImage {
        id: rocket2
        width:130;height:130
        x: 140; y:100
        source: "rocket.png"
        smooth: true
        onClicked: {
            rotation += 5
        }
    }

    ClickableImage {
        id: rocket3
        width:130;height:130
        x: 240; y:100
        source: "rocket.png"
        smooth: true
        onClicked: {
            rotation += 5
        }
    }

*/
    /*    MouseArea {
            id: backgroundClicker
            anchors.fill:parent
            onClicked: {
                rocket1.x=20
                rocket2.rotation=0
                rocket3.rotation=0
                rocket3.scale=1.0
            }
        }*/
}
