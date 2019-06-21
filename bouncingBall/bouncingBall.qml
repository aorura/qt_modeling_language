import QtQuick 2.0

Item {
    id: root
    width: 480
    height: 300
    property int duration/* Fill the Blank */: 3000
 
    Rectangle {
        id: sky
        width: parent.width
        height: 200
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0080FF" }
            GradientStop { position: 1.0; color: "#66CCFF" }
        }
    }
    
    Rectangle {
        id: ground
        anchors.top: sky.bottom
        anchors.bottom: root.bottom
        width: parent.width
        
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#00FF00" }
            GradientStop { position: 1.0; color: "#00803F" }
        }
    }
 
    Image {
        id: ball
        x: 20; y: 240
        source: "assets/soccer_ball.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                ball.x = 20; ball.y = 240
                anim.restart()
            }
        }
    }
 
    ParallelAnimation/* Fill the Blank */ {
        id: anim
        SequentialAnimation/* Fill the Blank */ {
            NumberAnimation/* Fill the Blank */ {
                target: ball
                properties: "y"
                to: 20
                duration: root.duration * 0.2/* Fill the Blank */
                easing.type: Easing.OutCirc/* Fill the Blank */
            }
            
            NumberAnimation {
                target: ball
                properties: "y"
                to: 240
                duration: root.duration * 0.3
                //easing.type: Easing.OutCirc/* Fill the Blank */
            }

            NumberAnimation/* Fill the Blank */ {
                target: ball
                properties: "y"
                to: 120
                duration: root.duration * 0.2/* Fill the Blank */
                easing.type: Easing.OutCirc/* Fill the Blank */
            }

            NumberAnimation {
                target: ball
                properties: "y"
                to: 240
                duration: root.duration * 0.3
                easing.type: Easing.OutBounce/* Fill the Blank */
            }
        }
        
        NumberAnimation {
            target: ball
            properties: "x"
            to: 300
            duration: root.duration
        }
        
        RotationAnimation/* Fill the Blank */ {
            target: ball
            properties: "rotation"
            to: 720
            duration: root.duration * 1.1
        }
    }
}
