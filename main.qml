import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12

import com.company.dirhelper 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    DirHelper {
        id: dirhelper
        path: "/home/rootshell/Pictures/Wallpapers"
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Component.onCompleted: {
            var files = dirhelper.files

            for(var i = 0; i < files.length; i++) {
                console.log("Loading: ", files[i])
                var compoent = Qt.createComponent("ImagePage.qml")
                var page = compoent.createObject(swipeView,{"width" : 640, "height": 480 })
                page.source = "file://" + files[i]
            }
        }

    }


}
