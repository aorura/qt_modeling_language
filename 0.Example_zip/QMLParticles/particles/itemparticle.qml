import QtQuick 2.0
import QtQuick.Particles 2.0

Rectangle {
    id: root
    width: 400; height: 400
    color: "#333333"

    // M1>>
    ParticleSystem {
        id: particleSystem
    }

    Emitter {
        id: emitter
        anchors.fill: root
        anchors.margins: 32
        system: particleSystem
        emitRate: 4
        lifeSpan: 2000
    }
    // <<M1


    // M2>>
    ItemParticle {
        id: particle
        system: particleSystem
        delegate: itemDelegate
    }
    // <<M2

    // M3>>
    Component {
        id: itemDelegate
        Rectangle {
            id: container
            width: 32*Math.ceil(Math.random()*3); height: width
            color: 'white'
            Image {
                anchors.fill: parent
                anchors.margins: 4
                source: 'assets/fruits'+Math.ceil(Math.random()*10)+'.jpg'
            }
        }
    }
    // <<M3
}
