import QtQuick 2.12
import QtQuick.Window 2.12

import QtQuick 2.0

Rectangle {
    width: 300
    height: 290

    color: "white"

    // The actual list
    ListView {
        anchors.fill: parent
        anchors.margins: 20
        //orientation: ListView.Horizontal
        focus: true
        clip: true
        spacing: 5

        model: 100
        delegate: numberDelegate
        highlight: highlightComponent
        header: headerComponent
        footer: footerComponent
    }

    Component {
        id: numberDelegate

        Item {
            width: 40
            height: 40
            //color: "lightGreen"

            Text {
                anchors.centerIn: parent
                font.pixelSize: 10
                text: index
            }
        }
    }

    Component {
        id: highlightComponent

        Item {
            width: ListView.view.width
            height: ListView.view.height

            y: ListView.view.currentItem.y

            Behavior on y {
                SequentialAnimation {
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 0; duration: 200 }
                    NumberAnimation { duration: 1 }
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 1; duration: 200 }
                }
            }

            Rectangle {
                id : highlightRectangle
                anchors.fill: parent
                color: "lightGreen"
            }
        }

    }

    Component {
        id: headerComponent

        Rectangle {
            width: 40
            height: 20

            color: "yellow"
        }
    }

    Component  {
        id: footerComponent

        Rectangle {
            width: 40
            height: 20

            color: "red"
        }
    }



}
