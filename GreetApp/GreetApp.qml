import QtQuick 2.12
import QtQuick.Window 2.12

Text {
    id: thisLabel

    x:24; y:16
    height: 2 * width
    property int times: 24
    property alias anotherTimes: thisLabel.times

    text: "Greetings " + times

    font.family: "Ubuntu"
    font.pixelSize: 24

    KeyNavigation.tab: otherLebel

    onHeightChanged: console.log('height', height)

    focus: true

    color: focus? "red" : "black"
}
