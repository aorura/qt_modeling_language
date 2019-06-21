import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    Text {
         id: myText
         property double xAngle: 0; property double yAngle: 0; property double zAngle: 0
         text: "Rotation"; font.pointSize: 100; color: "red"; x: 150; y: 100
         transform: Rotation/* fill the blank */ { origin.x: 300; origin.y: 80; axis {x:1; y:0; z:0} angle:myText.xAngle }
    }

    Timer/* fill the blank */ {
         interval/* fill the blank */: 30; /* fill the blank */running: true; repeat/* fill the blank */: true
         onTriggered/* fill the blank */: { myText.xAngle = myText.xAngle + 1;
                    myText.yAngle = myText.yAngle + 1.5;
                    myText.zAngle = myText.zAngle + 2.5 }
    }
}
