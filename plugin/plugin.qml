import TimeExample 1.0
import QtQuick 2.0

Clock {
    Time {
        id: time

        onTimeChanged: {
            console.log("time_Changed")
        }
    }

    hours: time.hour
    minutes: time.minute
    onClicked: time.printLog();

    //Connections { target: time; onTimeChanged: console.log("timeChaged List_View"); }

}
