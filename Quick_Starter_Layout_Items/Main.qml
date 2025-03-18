import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    GreenSquare {
        width: 200
            BlueSquare {
            width: 12//This does not affect it because the fill property has higher priority
            anchors.fill: parent
            anchors.margins: 8
            }
    }


    GreenSquare {
        x: 100
        y: 100
        width: 200
            BlueSquare {
            width: 12
            anchors.left: parent.right
            anchors.margins: 8
            }
    }

    GreenSquare {
        x: 200
        y: 200
        BlueSquare {
            id: blue1
            width: 48; height: 24
            y: 8
            anchors.horizontalCenter: parent.horizontalCenter
        }
        BlueSquare {
            id: blue2
            width: 72; height: 24
            anchors.top: blue1.bottom
            anchors.topMargin: 4
            anchors.horizontalCenter: blue1.horizontalCenter
        }
    }

}
