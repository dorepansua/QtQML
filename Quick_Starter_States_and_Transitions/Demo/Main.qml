import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")







    Rectangle{
        id: light1
        x: 25
        y: 15
        width: 100
        height: width
        radius: 2
        color: "black"
        border.color: Qt.lighter(color, 1.1)
    }

    Rectangle {
        id: light2
        x: 25; y: 135
        width: 100; height: width
        radius: width/2
        color: "black"
        border.color: Qt.lighter(color, 1.1)
    }



    Rectangle {
        width: 100
        height: 100
        x: light2.x
        y: 255
        color:"pink"
        id: root

        state: "stop"
        states: [
            State {
                name: "stop"
                PropertyChanges { target: light1; color: "red" }
                PropertyChanges { target: light2; color: "black" }
            },
            State {
                name: "go"
                PropertyChanges { target: light1; color: "black" }
                PropertyChanges { target: light2; color: "green" }
            }
        ]


        MouseArea {
            anchors.fill: parent
            onClicked: function (){
            console.log("Clicked");
            parent.state = (parent.state == "stop" ? "go" : "stop")
        }
        }
}




}
