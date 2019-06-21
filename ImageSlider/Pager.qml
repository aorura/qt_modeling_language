import QtQuick 2.0

Rectangle {
    id: pager
    anchors.fill: parent

    property bool enableKeys: true
    property QtObject model
    property bool isHorizontal: false

    property alias index: view.currentIndex
    property Item item: view.currentItem

    signal currentIndexChanged();

    ListView/* fill the blank */ {
        id: view
        anchors.fill: pager;
        model: pager.model/* fill the blank */
        orientation: if (isHorizontal) { ListView.Horizontal } else { ListView.Vertical }
        snapMode: ListView.SnapOneItem;
        flickDeceleration: 500
        highlightFollowsCurrentItem: true
        highlightRangeMode: ListView.StrictlyEnforceRange
        preferredHighlightBegin: 0; preferredHighlightEnd: 0
        cacheBuffer: width;
        focus: pager.focus
        onCurrentIndexChanged: pager.currentIndexChanged()

        Keys.onLeftPressed/* fill the blank */: {
            if (currentIndex > 0 )
            currentIndex = currentIndex-1;}
        Keys.onRightPressed/* fill the blank */: {
            if (currentIndex < count)
            currentIndex = currentIndex+1;}
    }
}
