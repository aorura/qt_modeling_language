import QtQuick 2.0

Rectangle {
    width: 360
    height: 640

    ListModel {
        id: myListModel/* fill the blank */
        ListElement {
            item_index: 0
            item_name: "Item 1"
            item_description: "Description 1"
        }
        ListElement {
            item_index: 1
            item_name: "Item 2"
            item_description: "Description 2"
        }
        ListElement {
            item_index: 2
            item_name: "Item 3"
            item_description: "Description 3"
        }
    }

    Component {
        id: myListDelegate /* fill the blank */

        Item {
            id: wrapper
            width: parent.width
            height: 40
            Column {
                x: 5; y: 5
                Text { text: '<b>Name:</b> ' + item_name }
                Text { text: '<b>Description:</b> ' + item_description }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: myList.currentIndex = item_index
            }
        }
    }

    Component {
        id: myListHilight /* fill the blank */
        Rectangle {
            width: parent.width
            height: 40
            color: "lightsteelblue"
            radius: 5
            y: myList.currentItem.y;
            Behavior on y { SpringAnimation {
                    spring: 3
                    damping: 0.2
                }
            }
        }
    }

    // The actual list
    ListView {
        id: myList
        width: parent.width; height: parent.height
        model: myListModel /* fill the blank */
        delegate: myListDelegate /* fill the blank */
        highlight: myListHilight /* fill the blank */
        focus: true
    }
}
