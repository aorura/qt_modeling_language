import QtQuick 2.0

Rectangle {
   color: "white"
   width:200
   height: 300

   ListView {
       anchors.fill: parent
       model: listModel
       delegate: Component {
           Text { text: time }
       }
   }

   ListModel { id: listModel }

   WorkerScript {
       id: worker
       source: "dataloader.js"
   }

   Timer {
       id: timer
       interval: 2000; repeat: true
       running: true
       triggeredOnStart: true

       onTriggered: {
           var msg = {'action': 'appendCurrentTime', 'model': listModel };
           worker.sendMessage(msg)
       }
   }
 }
