import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Item {
    property alias source: image.source
    Page {
        anchors.fill: parent
        Image {
            id: image
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1200px-Qt_logo_2016.svg.png"
        }

    }
}
