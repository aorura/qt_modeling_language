import QtQuick 2.2
import "functions.js" as PaintFunctions

Rectangle {
    width:700; height: 500;
    id: toprect
    property variant colorArray : ["blue", "yellow", "green", "red", "white", "black", "gray", "violet", "lightsteelblue"]
    property int colorIndex : 0

    Item {
        width:700; height:500;
        anchors.topMargin: 20;anchors.top: toprect.top;
        Rectangle {
            width:500; height:100;
            id:colorselect


            Grid {
                anchors.horizontalCenter: parent.horizontalCenter
                columns:9
                spacing: 5
//                Rectangle { color:"blue";
//                    width:50;height: 50;border.color: "gray";border.width: 2;radius:20.0;
//                    MouseArea { anchors.fill: parent;onClicked:{PaintFunctions.setColorSize("blue",50,50); }}
//                }
//                Rectangle { color:"yellow";
//                    width:50;height: 50;border.color: "gray";border.width: 2;radius:20.0;
//                    MouseArea { anchors.fill: parent;onClicked:{PaintFunctions.setColorSize("yellow",50,50); }}
//                }
//                Rectangle { color:"green";
//                    width:50;height: 50;border.color: "gray";border.width: 2;radius:20.0;
//                    MouseArea { anchors.fill: parent;onClicked:{PaintFunctions.setColorSize("green",50,50); }}
//                }

                Repeater {
                    model: 9
                    Rectangle {
                        id:colorPick
                        color: toprect.colorArray[index]
                        width:50;height: 50;border.color: "gray";border.width: 2;radius:20.0;
                        MouseArea { anchors.fill: parent;onClicked:{PaintFunctions.setColorSize(colorPick.color,50,50); console.log("pick clicked"); }}
                    }
                }
            }
        }
        Rectangle {
            id: rect
            width: 640
            height: 480
            anchors.top: colorselect.bottom
            anchors.topMargin: 5

            MouseArea {
                anchors.fill: parent
                focus: true
                onPositionChanged: {
                    PaintFunctions.paintshape(mouseX, mouseY);
                }
            }
        }
        //focus: true
        Keys.onPressed: {
            switch (event.key) {
            case Qt.Key_Plus:
                PaintFunctions.setSizeInc()
                break;
            case Qt.Key_Minus:
                PaintFunctions.setSizeDec()
                break;
            case Qt.Key_S:
                // save
                //rect.grabToImage(function(arg){arg.saveToFile("canvas.png");});
                rect.grabToImage(function(arg){arg.saveToFile("canvas.png");});
                break;
            default:
                console.log("Key: " + event.key)

            }
        }
    }
}
