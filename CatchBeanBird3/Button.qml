import QtQuick 2.0 

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
}
