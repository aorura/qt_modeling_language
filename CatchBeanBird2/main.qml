import QtQuick 2.4
import QtMultimedia 5.4
import QtQuick.Window 2.2 

Window {
    id: window
    visible: true
    width: 320; height: 420;
    maximumWidth/* fill the blank */: 320; maximumHeight: 420;
    minimumWidth: 320; /* fill the blank */minimumHeight: 420;
    color: "lightgray"

    property variant beanBird: /* fill the blank */;
    property int count: 0;
    property int catchedBird: 0;
    property bool isTimerRunning: false;

    Button {
        id: buttonRect
        anchors { top: parent.top; right: parent.right; left: parent.left; 
                       margins: 10 }
    }

    Flipable {
        id: mainRect
        anchors { top: buttonRect.bottom; right: parent.right; left: parent.left; 
                       bottom: parent.bottom; }

        property bool flipped: false
  
       front/* fill the blank */: Rectangle {
            id: rootRect
            anchors.fill: parent
            color: "lightgray"

            Grid {
                id: board
                columns: 5
                anchors/* fill the blank */ { top: parent.top; right: parent.right; left: parent.left;
                               margins: 10 }
            }

            Rectangle {
                id: scoreRect
                anchors { top: board.bottom; right: parent.right; left: parent.left; 
                               bottom: parent.bottom; margins: 10 } 
                color: "darkgray"

                Text {
                    id: scoreText
                    anchors.centerIn: parent
                    color: "white"
                    text: catchedBird
                    font { pointSize: 20; bold: true }
                }
            }

            Rectangle {
                id: endRect
                anchors { top: parent.top; right: parent.right; left: parent.left; 
                               bottom: scoreRect.top; }
                color: "lightgray"
                opacity: 0.8
                visible: false /* fill the blank */

                Text {
                    id: endText
                    anchors.centerIn: parent
                    horizontalAlignment: Text.AlignHCenter
                    color: "blue"
                    text: "Your score : " + catchedBird
                    font { pointSize: 35; bold: true }
                }

                MouseArea { anchors.fill: parent }
            }
        }
        back/* fill the blank */: Rectangle {
            id: score
            anchors { fill: parent; margins: 10; }
        }

        transform: Rotation/* fill the blank */ {
            id: rotation
            origin.x: mainRect.width/2; origin.y: mainRect.height/2
            axis.x: 0; axis.y: 1; axis.z: 0
            angle: 0
        }

        states: State/* fill the blank */ {
            name: "back"
            PropertyChanges/* fill the blank */ { target: rotation; angle: 180 }
            when/* fill the blank */: mainRect.flipped
        }
        transitions: Transition/* fill the blank */ {
            NumberAnimation/* fill the blank */ { target: rotation; property: "angle"; duration: 500 }
        }

        Component.onCompleted/* fill the blank */: {
            var i;
            console.log("Component.onCompleted");
            for(i = 0; i < 25; i++) {
                var gridStr = "import QtQuick 2.0; Rectangle { \
                                   width: rootRect.width/5-4; height: width; \
                                   border { width: 2; color: \"black\"; } }"
                var dynamicObject1 = Qt.createQmlObject(gridStr, board, 
                                                                                'gridObject'+i);

                var boxStr = "import QtQuick 2.0; Rectangle { \
                                   anchors { fill: parent; margins: 2 } clip: true; }"
                var dynamicObject2 = Qt.createQmlObject(boxStr, dynamicObject1,
                                                                                'gridObject'+i); 
                var component = Qt.createComponent("BeanBird.qml");
                console.log("com: " + component);
                if (component.status == Component.Ready) {
                    beanBird[i]  = component.createObject(dynamicObject2);
                }
            }
         }

        Timer/* fill the blank */ {
            id: timer
            interval: 140
            repeat: true
            onTriggered/* fill the blank */: {
                if(count++ < 150) {
                    var id = Math.floor(Math.random() * beanBird.length);
                    beanBird[id].blood.visible = false;
                    beanBird[id].y = 4;
                    isTimerRunning = true; 
                } else {
                    timer.stop();
                    isTimerRunning = false;
                    showEndTimer.start()
                }
            }
        }

        Timer {
            id: showEndTimer/* fill the blank */
            interval: 800
            repeat: false
            onTriggered: {
                playMusic.stop/* fill the blank */();
                endSound.play/* fill the blank */();
                endRect.visible = true
                hideEndTimer.start(); 
            }
        }

        Timer {
            id: hideEndTimer/* fill the blank */
            interval: 3000
            repeat: false
            onTriggered: {
                endRect.visible = false
                mainRect.flipped = true;
            }
        } 

        SoundEffect/* fill the blank */ {
            id: punchSound
            source: "sounds/punch.wav"
        }

        SoundEffect {
            id: endSound
            volume: 0.5
            source: "sounds/end.wav"
        }

        SoundEffect  {
            id: playMusic
            loops: SoundEffect.Infinite
            volume: 0.3
            source: "sounds/background.wav"
        } 
    } 
}
