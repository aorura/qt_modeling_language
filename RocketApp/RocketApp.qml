import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
    id: root
    //width:120; height:240
    width:1004; height:1304
    color: "#D8D8D8"

    Image {
        id: rocket
        x: (parent.width - width) / 2; y:40
        source: 'rocket.png'
    }

    Text {
        y:rocket.y + rocket.height + 20
        width: root.width

        horizontalAlignment: Text.AlignHCenter

        text: 'Rocket..............'
        color: "black"
    }
}
