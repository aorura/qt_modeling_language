import QtQuick 2.2
import QtQml.Models 2.2
import "ImageLoader.js" as ImageLoader/* fill the blank */

Rectangle {
    width: 360
    height: 640
    color: "#ffffff"

    Component.onCompleted: ImageLoader.createImages()
    /* fill the blank */

    Text {
        id: indexLabel
        anchors.top: parent.top
        height: 30
        text: "Image Slider"
        color: "blue"
    }

    Pager {
        id: myPager
        isHorizontal: true
        model: dataModel
        color: "blue"
        enableKeys: true
        focus: true
        anchors { topMargin:30; fill: parent }
        onCurrentIndexChanged : {
            if (index > -1) {
                indexLabel.text="Index: " + index
            }
        }
    }

    DelegateModel /* fill the blank */ {
        id: dataModel
        model: ListModel/* fill the blank */{
            id:innerModel
        }

        delegate/* fill the blank */: Image {
            width: myPager.width;
            height: myPager.height;
            source: url
            fillMode: Image.PreserveAspectFit /* fill the blank */
        }
    }
}
