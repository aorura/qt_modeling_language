import QtQuick 2.0

Rectangle  {
    id: box
    width: 350; height: 250

    Rectangle  {
        id: redSquare
        width: 80; height: 80
        anchors.top: parent.top; anchors.left: parent.left; anchors.margins: 10
        color: "red"//mouseArea.containsMouse ? "green" : "red"

        DropArea {
             anchors.fill: parent
             Rectangle { anchors.fill: parent; color: "yellow";
                                                 visible: parent.containsDrag;  }
         }
        Text  { id: redText; text: "Click"; font.pixelSize: 16; anchors.centerIn: parent }

        MouseArea  {
            anchors.fill: parent
            /* fill the blank */hoverEnabled: true
            /* fill the blank */acceptedButtons: Qt.LeftButton | Qt.RightButton

            /* fill the blank */onEntered: info.text = 'Entered'
            onExited: info.text = 'Exited (pressed=' + pressed + ')'

            onPressed:  {
                info.text = 'Pressed (button=' + (mouse.button == Qt.RightButton ? 'right' : 'left')
                    + ' shift=' + (mouse.modifiers & Qt.ShiftModifier ? 'true' : 'false') + ')'
                var posInBox = redSquare.mapToItem(box, mouse.x, mouse.y)
                posInfo.text = + mouse.x + ',' + mouse.y + ' in square'
                        + ' (' + posInBox.x + ',' + posInBox.y + ' in window)'
            }

            /* fill the blank */onReleased:  {
                info.text = 'Released (isClick=' + mouse.isClick + ' wasHeld=' +
                                  mouse.wasHeld + ')'
                posInfo.text = ''
            }

            /* fill the blank */onPressAndHold: info.text = 'Press and hold'
            onClicked: info.text = 'Clicked (wasHeld=' + mouse.wasHeld + ')'
            /* fill the blank */onDoubleClicked: info.text = 'Double clicked'
        }

    }

    Rectangle  {
        id: blueSquare
        width: 80; height: 80
        x: box.width - width - 10; y: 10    // making this item draggable, so don't use anchors
        color: "blue"
        Drag.active: dragArea.drag.active/* fill the blank */
        Drag.onDragFinished: console.log("Drag ended")

        Text  { text: "Drag"; font.pixelSize: 16; color: "white"; anchors.centerIn: parent }
        MouseArea  {
            id: dragArea
            anchors.fill: parent
            drag.target: blueSquare
            drag.axis: Drag.XandYAxis/* fill the blank */
            drag.minimumX: 0
            drag.maximumX: box.width - parent.width
            drag.minimumY: 0
            drag.maximumY: box.height - parent.height
        }
    }

    Text  {
        id: info
        anchors.bottom: posInfo.top; anchors.horizontalCenter:
                                    parent.horizontalCenter; anchors.margins: 30
        onTextChanged: console.log(text)
    }

    Text  {
        id: posInfo
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter;
                         margins: 30 }
    }

    focus: true
    Keys.onLeftPressed: blueSquare.x -= 8
    Keys.onRightPressed: blueSquare.x += 8
    Keys.onUpPressed: blueSquare.y -= 8
    Keys.onDownPressed: blueSquare.y += 8
    Keys.onPressed: {
        switch (event.key) {
        case Qt.Key_Plus:
            redSquare.scale += 0.2
            break;
        case Qt.Key_Minus:
            redSquare.scale -= 0.2
            break;
        default:
            console.log("Key: " + event.key)
        }
    }
}
