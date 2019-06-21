import QtQuick 2.0

Rectangle {
    width: 320
    height: 480
    ListView {
        id: view
        anchors.fill: parent
        delegate: Thumbnail {
            width: view.width
            text: modelData.title
            iconSource: modelData.media.m
        }
    }

    function request() {
        var xhr = new XMLHttpRequest/* Fill the blank */();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED) {
                print('HEADERS_RECEIVED')
            } else if(xhr.readyState === XMLHttpRequest.DONE/* Fill the blank */) {
                print('DONE')
                                print(xhr.responseText.toString())
                var json = JSON.parse(xhr.responseText.toString())
                view.model = json.items
                console.log(json)
            }
        }

        xhr.open("GET", "https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags=munich");

        xhr.send/* Fill the blank */();
    }

    Component.onCompleted: {
        console.log("Component.onCompleted")
        request()
    }
}

