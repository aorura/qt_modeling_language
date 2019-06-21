import QtQuick 2.0 
import QtQuick.Particles 2.0

Rectangle {
    height : 40
    color: mouseArea.pressed?"#c0d4ee":"#a0b4ee"
    radius: 10

    Text {
        id: buttonText
        anchors.centerIn: parent
        text: isTimerRunning?"Stop":"Start"
    }
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled/* fill the blank */: true
        onClicked/* fill the blank */: {
            console.log("Start");
            emitter.burst(100);
            count = 0;
            catchedBird = 0;
            if(isTimerRunning) {
                isTimerRunning = false;
                timer.stop();
                playMusic.stop();
            } else {
                mainRect.flipped = false;
                showEndTimer.stop()
                hideEndTimer.stop()
                endSound.stop();
                playMusic.play();
                endRect.visible = false;
                timer.start();
            }
        }
        onEntered/* fill the blank */: { buttonRect.color = "lightsteelblue"; }
        onExited/* fill the blank */: { buttonRect.color = "#a0b4ee"; }
        onPressed/* fill the blank */: { buttonRect.color = "#c0d4ee"; }
        onReleased/* fill the blank */: { buttonRect.color = "#a0b4ee"; }
    }

    ParticleSystem { id: particleSystem }
    Emitter {
        id: emitter;
        system: particleSystem
        width: parent.width/2; height: parent.height/2;
        anchors.centerIn: parent;
        emitRate:0; lifeSpan:1000; lifeSpanVariation: 2000;
        velocity: AngleDirection { angle:0; angleVariation: 360; magnitude: 30; magnitudeVariation: 30 }
    }

    ImageParticle { source: "images/particle2.png"; system: particleSystem }
}
