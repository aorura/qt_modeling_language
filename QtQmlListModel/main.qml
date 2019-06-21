import QtQuick 2.0
import io.qt.ItemControl 1.0

ListView {
    width:100; height: 100
    property int state : ItemControl.STOP
    model: myModel
    delegate: Rectangle {
        height: 25
        width: 100
        color: model.modelData.color
        Text { text: name }
    }

    ItemControl {
        id: item
        onLogPrinted: { console.log("ItemControl"); }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: item.printLog();
    }

    Connections { target: myItem; onLogPrinted: console.log("ListView"); }
}
