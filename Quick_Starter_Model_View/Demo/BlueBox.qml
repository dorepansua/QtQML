import QtQuick

import QtQuick.Controls 2.15

Rectangle {
    id: root
    property alias text: label.text

    width: 100
    height: 32
    color: "blue"
    border.color: "black"
    border.width: 1
    radius: 4

    Text {
        id: label
        anchors.centerIn: parent
        color: "white"
        font.bold: true
    }
}
