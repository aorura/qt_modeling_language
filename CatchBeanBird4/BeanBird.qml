import QtQuick 2.0
import QtQuick.Particles 2.0;

Image {
    property alias blood : blood;
    x:0; y:parent.height;
    width: parent.width-5; height: width
    source: "images/beanbird.png"
    fillMode: Image.PreserveAspectFit

    Image {
        id: blood
        width: parent.width-10; height: width
        source: "images/blood.png"
        visible: false
        fillMode: Image.PreserveAspectFit
    }

    Behavior on y {
        NumberAnimation {
            easing.type: Easing.OutCubic
            duration: 800; alwaysRunToEnd: false
            onRunningChanged: { y = parent.height }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            blood.visible = true
            punchSound.play()
            catchedBird++
            emitter.burst(20);
        }
    }

    ParticleSystem { id: particleSystem }
    Emitter {
        id: emitter;
        system: particleSystem
        width: parent.width/2; height: parent.height/2;
        anchors.centerIn: parent;
        emitRate:0; lifeSpan: 500; lifeSpanVariation: 300;
        velocity: AngleDirection { angle: 0; angleVariation: 360; magnitude: 30; magnitudeVariation: 30 }
    }

    ImageParticle { source: "images/particle1.png"; system: particleSystem }
}
