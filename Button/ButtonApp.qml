import QtQuick 2.0

Item {
    Button {
        id: button
        x:12; y:12
        text: "Start"
        onClicked: {
            status.text="Button clicked!"
        }
    }

    Text {
        id: status
        x:12; y: 76
        width: 116; height: 26
        text: "waiting..."
        horizontalAlignment: Text.AlignHCenter
    }
}
