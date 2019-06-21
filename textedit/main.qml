import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

//Window {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
//}

ApplicationWindow {
    title: qsTr("QMLEditor")
    visible: true
    width:640
    height: 480

    property string mode

    Action {
        id: newAction
        text: qsTr("&New")
        shortcut: "Ctrl+N"
        iconName: "new"
        iconSource: "images/new.png"
        onTriggered: textedit.text='';
    }

    Action {
        id: openAction
        text: qsTr("&Open")
        shortcut: "Ctrl+O"
        iconName: "open"
        iconSource: "images/open.png"
        onTriggered: openFile();
    }

    Action {
        id: saveAction
        text: qsTr("&Save")
        shortcut: "Ctrl+S"
        iconName: "save"
        iconSource: "images/save.png"
        onTriggered: saveFile();
    }

    Action {
        id: colorAction
        text: qsTr("&Color")
        shortcut: "Ctrl+Shift+C"
        onTriggered: setColor();
    }

    Action {
        id: fontAction
        text: qsTr("&Font")
        shortcut: "Ctrl+Shift+F"
        onTriggered: setFont();
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&file")
            MenuItem { action: newAction }
            MenuItem { action: openAction }
            MenuItem { action: saveAction }
            MenuItem { text: qsTr("E&xit"); onTriggered: Qt.quit(); }
        }
        Menu {
            title: qsTr("&Edit")
            MenuItem { text: qsTr("&Undo"); onTriggered: textedit.undo(); }
            MenuItem { text: qsTr("&Redo"); onTriggered: textedit.redo(); }
            MenuSeparator {}
            MenuItem { text: qsTr("&Copy"); onTriggered: textedit.copy(); }
            MenuItem { text: qsTr("C&ut"); onTriggered: textedit.cut(); }
            MenuItem { text: qsTr("&Paste"); onTriggered: textedit.paste(); }
            MenuSeparator {}
            MenuItem { action: colorAction }
            MenuItem { action: fontAction }
        }
        Menu {
            title: qsTr("&Help")
            MenuItem { text: qsTr("&About"); onTriggered: aboutDialog.open(); }
        }
    }

    toolBar: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton { action: newAction }
            ToolButton { action: openAction }
            ToolButton { action: saveAction }
            ToolButton { action: colorAction }
            ToolButton { action: fontAction }
            Item { Layout.fillWidth: true }

        }
    }

    TextArea {
        id: textedit
        anchors.fill: parent
    }

    function openFile() {
        mode = "open"
        fileDialog.selectExisting = true;
        fileDialog.open();
    }

    function saveFile() {
        mode = "save"
        fileDialog.selectExisting = false
        fileDialog.open();
    }

    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        onAccepted: {
            console.log("You chose: " + FileDialog.fileUrls)
            fileData.setFilename(fileDialog.fileUrl)
            if (mode == "open") {
                textedit.text = fileData.text
            } else {
                fileData.setText(textedit.text)
            }

            fileDialog.close()
        }

        onRejected: {
            console.log("Canceled")
            fileDialog.close()
        }
        Component.onCompleted: visible = false
    }

    function setColor() {
        colorDialog.open();
    }

    ColorDialog {
        id:colorDialog
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + colorDialog.color)
            textedit.textColor = colorDialog.color;
            colorDialog.close()
        }

        onRejected: {
            console.log("Canceled")
            colorDialog.close()
        }
        Component.onCompleted: visible = false
    }

    function setFont() {
        fontDialog.open();
    }

    FontDialog {
        id: fontDialog
        title: "Please choose a font"
        font: Qt.font({family: 'Arial', pointSize:24, weight: Font.Normal})
        onAccepted: {
            console.log("You chose: " + fontDialog.font)
            textedit.font = fontDialog.font;
            fontDialog.close()
        }
        onRejected: {
            console.log("Canceled")
            fontDialog.close()
        }
        Component.onCompleted: visible = false
    }

    MessageDialog {
        id: aboutDialog
        title: qsTr("About")
        text: "Made by valentis"
        Component.onCompleted: visible = false;
    }
}
