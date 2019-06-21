import QtQuick 2.0

Rectangle {
    color: "lightgray"
    radius: 10

    property alias model : scoreModel;

    ListView {
        id: scoreView
        anchors.fill: parent
        model: scoreModel
        delegate: scoreDelegate
        clip: true
        spacing: 5
        interactive: false
    }

    ListModel { id: scoreModel }

    Component {
        id: scoreDelegate

        Item {
            id: scoreItem
            width: ListView.width
            height: 30
            Row {
                spacing: 4
                Rectangle {
                    width: scoreItem.height; height: scoreItem.height
                    radius: scoreItem.height/2
                    color: (index==0)?"gold":(index == 1)?"silver":(index == 2)?"#cd7f32":"#C9C9C9";
                    border { width: 1; color: (index<3)?"white":"darkgray" }
                    Text {
                        anchors.centerIn: parent
                        font { pixelSize: 13; bold: true }
                        text: index + 1
                    }
                }

                Rectangle {
                    width: 210 - scoreItem.height; height: scoreItem.height
                    radius: 5
                    color: (scoreText.text.length == 0)?"lightsteelblue":"lightblue";
                    border { width: 1; color: (scoreText.text.length == 0)?"white":"darkgray" }
                    Text {
                        id: scoreText
                        anchors { fill: parent; margins: 5 }
                        visible: (scoreText.text.length == 0)?false:true
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        elide:Text.ElideRight
                        font { pixelSize: 14; bold: true }
                        text: name
                    }
                    TextInput {
                        id: scoreName
                        anchors { fill: parent; margins: 5 }
                        visible: (scoreText.text.length == 0)?true:false
                        verticalAlignment: Text.AlignVCenter
                        font { pixelSize: 14; bold: true }
                        focus: (scoreText.text.length == 0)?true:false
                        onAccepted: {
                            var db = LocalStorage.openDatabaseSync("CatchBeanBirdDB", "1.0", "Catch Bean Bird!", 1000000);
                            db.transaction(
                                function(tx) {
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS game(name TEXT, score INTEGER)');
                                    tx.executeSql('INSERT INTO game VALUES(?, ?)', [ text, catchedBird ]);
                                }
                            );
                            visible = false
                            focus = false
                            scoreText.text = text;
                        }
                    }
                }

                Rectangle {
                    width: 82; height: scoreItem.height; radius: 5
                    color: "lightblue"
                    border { width: 1; color: "lightsteelblue" }
                    Text {
                        anchors.centerIn: parent
                        font.pixelSize: 14
                        text: score
                    }
                }
            }
        }
    }
}

