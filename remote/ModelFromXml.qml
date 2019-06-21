import QtQuick 2.0
import QtQuick.XmlListModel 2.0 /* file the blank */

Item {
    width: 300
    height: 480

    Component {
        id: imageDelegate /* file the blank */

        Item {
            width: listView.width
            height: 400

            Column {
                Text {
                    text: title
                }

                Image {
                    source: imageSource /* file the blank */
                }
            }
        }
    }

    XmlListModel /* file the blank */ {
        id: imageModel /* file the blank */

        source /* file the blank */: "https://feeds.nationalgeographic.com/ng/photography/photo-of-the-day/"
        query /* file the blank */: "/rss/channel/item"

        XmlRole /* file the blank */ { name: "title"; query: "title/string()" }
        XmlRole /* file the blank */ { name: "imageSource"; query: "substring-before(substring-after(description/string(), 'img src=\"'), '\"')" }
    }

    ListView /* file the blank */ {
        id: listView/* file the blank */

        anchors.fill: parent

        model: imageModel /* file the blank */
        delegate: imageDelegate /* file the blank */
    }
}

