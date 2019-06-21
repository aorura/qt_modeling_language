import QtQuick 2.0

Item {
    Rectangle {
        opacity: 0.5
        clip: true
        color: "red"
        width: 100; height: 100
        Rectangle {
            color: "blue"
            x: 50; y: 50; width: 100; height: 100
        }
    }
}
