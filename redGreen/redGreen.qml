import QtQuick 2.0

Item {
    id: root
    width: 150;height:250
    states: [
        State {
            name: "go"
            PropertyChanges { target: light1;color:"black" }
            PropertyChanges { target: light2;color:"green" }
        },
        State {
            name: "stop"
            PropertyChanges { target: light1;color:"red" }
            PropertyChanges { target: light2;color:"black" }

        }
    ]

    transitions: [
        Transition {
            from: "go"; to: "stop"
            PropertyAnimation { properties: "color"; duration: 1000 }
        },

        Transition {
            from: "stop"; to: "go"
            PropertyAnimation { properties: "color"; duration: 1000 }
        }
//                Transition {
//                    from: "stop"; to: "go"
//                    ColorAnimation {target:light1; properties: "color"; duration: 2000 }
//                    ColorAnimation {target:light2; properties: "color"; duration: 2000 }
//                }
    ]

    MouseArea {
        anchors.fill: parent
        onClicked: root.state = (parent.state == "stop" ? "go" : "stop")
    }

    Rectangle {
        id:light1
        x:25;y:15
        width:100;height:width
        radius: width/2
        color:"black"
    }

    Rectangle {
        id:light2
        x:25;y:135
        width:100;height: width
        radius:width/2
        color:"black"
    }
}

/*
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
            onClicked: if (myRect.state == "OldState")
                                myRect.state = "NewState";
                               else myRect.state = "OldState" }
    }

    states: [
        State {
            name: "NewState"
            PropertyChanges { target: movingRect; x: 580; y: 340; radius: 30; color: "green" }
        }
    ]

    transitions: [
        Transition {
            from: "OldState"; to: "NewState"
            PropertyAnimation { properties: "x,y,color,radius"; duration: 1000 }
        },

        Transition {
            from: "NewState"; to: "OldState"
            PropertyAnimation { properties: "x,y,color,radius"; duration: 1000 }
        }
    ]
}
*/
