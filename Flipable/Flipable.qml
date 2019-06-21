import QtQuick 2.0

Flipable {
    id: flipable
    width: 800; height: 480;
    property bool flipped
    property int angle

    front/* Fill the blank */ : Rectangle {
        id: page1
        anchors.fill: parent
        color: "#555555";
        MouseArea { anchors.fill: parent; onClicked: main.state = 'page2' }
        Text { x:100; y:80; text: "Page 1\nClick!"; font.pointSize:24; color: "white"}
        Image { source: "Crepuscular_rays_with_reflection_in_GGP.jpg"/*"http://upload.wikimedia.org/wikipedia/commons/a/af/Crepuscular_rays_with_reflection_in_GGP.jpg"*/
                x:260; y:80; width:480; height:320; }
    }

    back/* Fill the blank */ : Rectangle {
        id: page2
        anchors.fill: parent
        color: "#004400"
        MouseArea { anchors.fill: parent; onClicked: main.state = 'page1' }
        Text { x:600; y:80; text: "Page 2\nClick!"; font.pointSize:24; color: "white"}
        Image { source:"http://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Thomas_Bresson_-_Fort_de_Roppe_(15)_(by).JPG/800px-Thomas_Bresson_-_Fort_de_Roppe_(15)_(by).JPG";
                x:100; y:80; width:480; height:320; }
    }

    transform/* Fill the blank */ : Rotation/* Fill the blank */  {
         origin.x: flipable.width/2; origin.y: flipable.height/2
         axis.x: 1; axis.y: 0; axis.z: 0
         angle: flipable.angle
     }

    states/* Fill the blank */ : State/* Fill the blank */  {
         name: "back"
         PropertyChanges /* Fill the blank */  { target: flipable; angle: 180 }
         when: flipable.flipped
     }

     transitions/* Fill the blank */ : Transition/* Fill the blank */  {
         NumberAnimation /* Fill the blank */ { properties: "angle"; duration: 1500; easing.type: "InOutQuad" }
     }

     MouseArea {
         anchors.fill: parent
         onClicked: flipable.flipped = !flipable.flipped/* Fill the blank */
     }
}

