import QtQuick 2.0

Text {
    width: height*3; height:40
    text: 'A long time ago in a galaxy far, far away'
    elide: Text.ElideMiddle
    style: Text.Sunken
    styleColor: '#FF4444'
    verticalAlignment: Text.AlignTop
    wrapMode: Text.WordWrap
}
