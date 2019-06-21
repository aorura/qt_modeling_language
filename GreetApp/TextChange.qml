import QtQuick 2.12
import QtQuick.Window 2.12

Text {
    id: label
    width:200;height:200
    x:24; y:24

    property int spacePresses: 0

    text: "Space pressed: " + spacePresses + " times"

    onTextChanged: console.log("text changed to:", text)

    focus: true

    Keys.onSpacePressed: {
        increment()
    }

    Keys.onEscapePressed: {
        label.text=''
    }

    function increment() {
        spacePresses = spacePresses + 1
    }

    Grid {
        rows:1; columns:1;
        anchors.bottom: label.bottom;

        KeyItem { }
    }
}
