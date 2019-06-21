import QtQuick 1.1

import "functions.js" as PaintFunctions/* fill the blank */

Rectangle {
    width: 640
    height: 480
    id: rect
    color:"white"

    MouseArea {
        anchors.fill:parent
        focus:true
        onMousePositionChanged:
         {
            // callback function call to the mouse position change event
            /* fill the blank */
            PaintFunctions.paintshape(mouseX, mouseY);
          }
    }
}


/*
Flipable {
    id: flipable
    width: 1600; height: 480;
    property bool flipped
    property int angle

    front: Rectangle {
        id: page1
        x:800;
        width:800;
        height: 480;
//        anchors.fill: parent
        color: "#555555";
        MouseArea { anchors.fill: parent; onClicked: main.state = 'page2' }
        Text { x:100; y:80; text: "Page 1\nClick!"; font.pointSize:24; color: "white"}
        Image { source:"http://upload.wikimedia.org/wikipedia/commons/a/af/Crepuscular_rays_with_reflection_in_GGP.jpg";
            x:260; y:80; width:480; height:320; }
    }

    back: Rectangle {
        id: page2
        width:800;
        height: 480;
//        anchors.fill: parent
        color: "#004400";
        MouseArea { anchors.fill: parent; onClicked: main.state = 'page1' }
        Text { x:600; y:80; text: "Page 2\nClick!"; font.pointSize:24; color: "white"}
        Image { source:"http://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Thomas_Bresson_-_Fort_de_Roppe_(15)_(by).JPG/800px-Thomas_Bresson_-_Fort_de_Roppe_(15)_(by).JPG";
                x:100; y:80; width:480; height:320; }
    }

    transform: Rotation {
         origin.x: 0; //flipable.width/2;
         origin.y: flipable.height/2
         axis.x: 0; axis.y: 1; axis.z: 0
         angle: flipable.angle
    }

   states: State {
        name: "back"
        PropertyChanges { target: flipable; angle: 360 }
        when: flipable.flipped
    }

    transitions: Transition {
        NumberAnimation { properties: "angle"; duration: 1500; easing.type: "InOutQuad" }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: flipable.flipped = !flipable.flipped
    }
}
*/
/*
Rectangle {
    width: 360
    height: 640

    ListModel {
        id: myListModel
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
        id: myListDelegate
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
        id: myListHilight
        Rectangle {
            width: parent.width
            height: 40
            color: "lightsteelblue"
            radius: 5
            y: myList.currentItem.y;
            Behavior on y { SpringAnimation {
                spring: 3
                damping: 0.2
            } }
        }
    }

   // The actual list
    ListView {
        id: myList
        width: parent.width; height: parent.height
        model: myListModel
        delegate: myListDelegate
        highlight: myListHilight
        focus: true
    }
}
*/
/*
Rectangle {
    width: 640; height: 400

    Text {
         id: myText
         property double xAngle: 0; property double yAngle: 0; property double zAngle: 0
         text: "Rotation"; font.pointSize: 100; color: "red"; x: 150; y: 100
//         transform: Rotation { origin.x: 300; origin.y: 80; axis {x:1; y:0; z:0} angle:myText.xAngle }
//         transform: Rotation { origin.x: 300; origin.y: 80; axis {x:0; y:1; z:0} angle:myText.yAngle }
         transform: Rotation { origin.x: 300; origin.y: 80; axis {x:0; y:0; z:1} angle:myText.zAngle }
    }

    Timer {
         interval: 30; running: true; repeat: true
         onTriggered: { myText.xAngle = myText.xAngle + 1;
                        myText.yAngle = myText.yAngle + 1.5;
                        myText.zAngle = myText.zAngle + 2.5 }
    }
}
*/
/*
Rectangle {
    width: 640; height: 400

    ListModel {
        id: model
        ListElement { fruit: "Bilberry";
                      picture: "http://upload.wikimedia.org/wikipedia/commons/9/91/Norwegian_blueberries.jpg" }
        ListElement { fruit: "Kumquat";
                      picture: "http://upload.wikimedia.org/wikipedia/commons/8/82/Kumquat.jpeg" }
        ListElement { fruit: "Grapefruit";
                      picture: "http://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Table_grapes_on_white.jpg/250px-Table_grapes_on_white.jpg" }
    }

    Component {
        id: delegate
        Item {
            width: 100; height: 100
            scale: PathView.scale
            Column {
                Image { anchors.fill: parent; source: picture;  }
                Text { text: fruit; font.pointSize: 24; }
            }
        }
    }

    PathView {
        anchors.fill: parent
        model: model;
        delegate: delegate
        path: Path {
            startX: 100; startY: 100
            PathAttribute { name: "scale"; value: 0.5 }
            PathLine { x:200; y:200 }
            PathAttribute { name: "scale"; value: 1.0 }
            PathLine { x:300; y:100 }
            PathLine { x:100; y:100 }
        }
    }
}
*/
/*
Rectangle {
    id: myRect; width: 640; height: 400; state: "OldState"
    Rectangle { id: movingRect; width: 60; height: 60; color: "red"
        MouseArea { anchors.fill: parent;
                    onClicked: if (myRect.state == "OldState") myRect.state = "NewState";
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
/*
Column {
    spacing: 2;
    Rectangle { color:"red"; width:50; height:50 }
    Rectangle { color:"green"; width:20; height:50 }
    Rectangle { color:"blue"; width:50; height:20 }

    move: Transition {
        NumberAnimation {
            properties: "y"
            easing.type : Easing.OutBounce;
        }
    }
}
*/
/*
Row {
    spacing: 2
    Rectangle { color:"red"; width:50; height:50 }
    Rectangle { color:"green"; width:20; height:50 }
    Rectangle { color:"blue"; width:50; height:20 }
}
*/
/*
Column {
    spacing: 2;
    Rectangle { color:"red"; width:50; height:50 }
    Rectangle { color:"green"; width:20; height:50 }
    Rectangle { color:"blue"; width:50; height:20 }
}
*/
/*
BorderImage {
    x: 20; y: 20; width: 240; height: 240
    smooth: true
    source: "myimage.sci"
}
*/
/*
Rectangle {
    width: 360
    height: 360
    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
}
*/
/*
Rectangle {
     id: page
     width: 200;
     height: 200
     color: "lightgray"
     border.color: "black"
     border.width: 5
     radius: 10

     Text {
         id: helloText
         text: "Hello World"
         x: 66
         y: 93
         color: "blue"
         anchors.horizontalCenter: page.horizontalCenter
         font.pointSize: 24; font.bold: true
     }

     Grid {
         id: colorPicker
         x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
         rows: 2; columns: 3; spacing: 3; z: 1

         Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
         Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
         Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
         Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
         Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
         Cell { cellColor: "black"; onClicked: helloText.color = cellColor }
     }

     MouseArea {
         anchors.fill: parent
         onClicked: {
             mouse.accepted = false
             console.log("Box Clicked");
         }
     }
 }
*/
