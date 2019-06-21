import QtQuick 2.0

Item {
    width: 300
    height: 480
    id: root

    PathView {
        anchors.fill: parent

        delegate: flipCardDelegate/* fill the blank */
        model: 100/* fill the blank */

        path: Path {
            /* fill the blank */startX: root.width/2
            /* fill the blank */startY: 0

            /* fill the blank */ PathAttribute { name: "itemZ"; value: 0 }
            PathAttribute { name: "itemAngle"; value: -90.0; }
            PathAttribute { name: "itemScale"; value: 0.5; }

            /* fill the blank */ PathLine { x: root.width/2; y: root.height*0.4; }
            /* fill the blank */ PathPercent { value: 0.48; }

            /* fill the blank */ PathLine { x: root.width/2; y: root.height*0.5; }
            /* fill the blank */ PathAttribute { name: "itemAngle"; value: 0.0; }
            PathAttribute { name: "itemScale"; value: 1.0; }
            PathAttribute { name: "itemZ"; value: 100 }
            PathLine /* fill the blank */ { x: root.width/2; y: root.height*0.6; }
            PathPercent/* fill the blank */ { value: 0.52; }
            PathLine/* fill the blank */ { x: root.width/2; y: root.height; }
            PathAttribute/* fill the blank */ { name: "itemAngle"; value: 90.0; }
            PathAttribute { name: "itemScale"; value: 0.5; }
            PathAttribute { name: "itemZ"; value: 0 }
        }

        pathItemCount/* fill the blank */: 6

        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
    }


    Component/* fill the blank */ {
        id: flipCardDelegate/* fill the blank */

        Item {
            id: wrapper
            width: 64
            height: 64

            visible/* fill the blank */: PathView.onPath

            scale/* fill the blank */: PathView.itemScale
            z/* fill the blank */: PathView.itemZ

            property variant rotX: PathView.itemAngle
            transform: Rotation/* fill the blank */ { axis { x: 1; y: 0; z: 0 } angle: wrapper.rotX;
                origin { x: 32; y: 32; } }

            Rectangle {
                anchors.fill: parent
                color: "lightGray"
                border.color: "black"
                border.width: 3
            }

            Text {
                anchors.centerIn: parent
                text: index
                font.pixelSize: 30
            }
        }
    }
}
