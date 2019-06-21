import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
    id: page
    color: 'lightgray'
    width: 200
    height: 200
    border {
        color: "black"
        width: 5
    }
    radius: 10

/*    Text {
        x: 66
        y:93
        text: "Hello World"
    }
*/
    Text {
        id: helloText
        text: "Hello, World!"
        anchors.horizontalCenter: page.horizontalCenter
        x:66
        y:93
        color: "blue"

        font.pointSize: 24
        font.bold: true
    }

    Grid {
        id: colorPicker
        rows:2; columns:3;  spacing: 3
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4

        Cell { cellColor: "red"; onClicked: helloText.color=cellColor}
        Cell { cellColor: "green"; onClicked: helloText.color=cellColor}
        Cell { cellColor: "blue"; onClicked: helloText.color=cellColor}
        Cell { cellColor: "yellow"; onClicked: helloText.color=cellColor}
        Cell { cellColor: "steelblue"; onClicked: helloText.color=cellColor}
        Cell { cellColor: "black"; onClicked: helloText.color=cellColor}
    }
}
