import QtQuick 2.0

Item {
    width: 300
    height: 480

    ListModel/* fill the blank */ {
        id: model/* fill the blank */
        ListElement/* fill the blank */ {
            fruit: "Bilberry";
            picture: "http://upload.wikimedia.org/wikipedia/commons/9/91/Norwegian_blueberries.jpg" }
        ListElement/* fill the blank */ {
            fruit: "Kumquat";
            picture: "http://upload.wikimedia.org/wikipedia/commons/8/82/Kumquat.jpeg" }
        ListElement/* fill the blank */ {
            fruit: "Grapefruit"; picture:
                "http://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Table_grapes_on_white.jpg/250px-Table_grapes_on_white.jpg" }
    }

    Component {
        id: delegate/* fill the blank */
        Item {
            width: 100; height: 100
            scale: PathView.scale
            Column {
                anchors.fill: parent;
                Image { anchors.fill: parent; source: picture;  }
                Text { text: fruit; font.pointSize: 24; }
            }
        }
    }

    PathView {
        anchors.fill: parent
        model: model/* fill the blank */;
        delegate: delegate/* fill the blank */
        path: Path/* fill the blank */ {
            startX: 100; startY: 100
            PathAttribute/* fill the blank */ { name: "scale"; value: 0.5 }
            PathLine/* fill the blank */ { x:200; y:200 }
            PathAttribute/* fill the blank */ { name: "scale"; value: 1 }
            PathLine/* fill the blank */ { x:300; y:100 }
            PathLine/* fill the blank */ { x:100; y:100 }
        }
    }
}
