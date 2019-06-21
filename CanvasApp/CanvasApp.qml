import QtQuick 2.0

Rectangle {
    width: 240; height: 120
    Canvas {
        id: canvas /* fill the blank */
        x: 10; y: 10
        width: 100; height: 100
        property real hue: 0.0
        onPaint/* fill the blank */: {
            var ctx = getContext("2d")
            var x = 10 + Math.random(80)*80
            var y = 10 + Math.random(80)*80
            hue += Math.random()*0.1
            if(hue > 1.0) { hue -= 1 }
            ctx.globalAlpha = 0.7
            ctx.fillStyle = Qt.hsla(hue, 0.5, 0.5, 1.0)
            ctx.beginPath()
            ctx.moveTo(x+5,y)
            ctx.arc(x,y, x/10, 0, 360)
            ctx.closePath()
            ctx.fill()
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                var url = canvas.toDataURL('image/png')
                print('image url=', url)
                image.source = url
                canvas.save("canvas.png")
            }
        }
    }

    Image {
        id: image
        x: 130; y: 10
        width: 100; height: 100
    }

    Timer/* fill the blank */ {
        interval: 1000
        running: true
        triggeredOnStart/* fill the blank */: true
        repeat: true
        onTriggered/* fill the blank */: canvas.requestPaint()/* fill the blank */
    }
}

// GPGUV - CUDA, OpenCL
