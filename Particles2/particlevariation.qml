import QtQuick 2.0
import QtQuick.Particles 2.0

Rectangle {
    id: root
    width: 480; height: 160
    color: "#1F1F1F"

    ParticleSystem {
        id: particleSystem
    }

    // M1>>
    ImageParticle {
        source: "assets/star.png"
        system: particleSystem
        color: '#FFD700'
        colorVariation: 0.2
        rotation: 0
        rotationVariation: 45
        rotationVelocity: 15
        rotationVelocityVariation: 15
        entryEffect: ImageParticle.Scale
    }
    // <<M1


    Emitter {
        id: emitter
        anchors.fill: parent
        system: particleSystem
        lifeSpan: 8000
        size: 32
        endSize: 16
    }
}
