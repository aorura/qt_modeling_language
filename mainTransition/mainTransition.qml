import QtQuick 2.0

Rectangle {
    id: myRect;
    width: 640; height: 400;
    state: "OldState"

    Rectangle {
        id: movingRect;
        width: 60; height: 60;

        color: "red"
        MouseArea {
            anchors.fill: parent;
            onClicked/* fill the blank */: if (myRect.state == "OldState")
                                myRect.state = "NewState";
                               else myRect.state = "OldState" }
    }

    states/* fill the blank */: [
        State/* fill the blank */ {
            name: "NewState"
            PropertyChanges/* fill the blank */ { target: movingRect; x: 580; y: 340; radius: 30; color: "green" }
        }
    ]

    transitions/* fill the blank */: [
        Transition/* fill the blank */ {
            from/* fill the blank */: "OldState"; to: "NewState"
            PropertyAnimation { properties: "x,y,color,radius"; duration: 1000 }
        },

        Transition/* fill the blank */ {
            from: "NewState"; to/* fill the blank */: "OldState"
            PropertyAnimation { properties: "x,y,color,radius"; duration: 1000 }
        }
    ]
}
