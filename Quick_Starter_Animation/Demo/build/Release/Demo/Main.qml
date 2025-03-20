import QtQuick

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")




    // AnimationExample
    // {

    // }


    ClickableImageV2 {
        id: greenBox
        x: 40; y: root.height-height
        source: "box_green.png"
        text: qsTr("animation on property")
        NumberAnimation on y {
            to: 40; duration: 4000
        }
    }


    ClickableImageV2 {
        id: blueBox
        x: (root.width-width)/2; y: root.height-height
        source: "box_green.png"
        text: qsTr("behavior on property 222")
        Behavior on y {
            NumberAnimation { duration: 4000 }
        }
        onClicked: y = 100
        // random y on each click
        // onClicked: y = 40 + Math.random() * (205-40)
    }

    ClickableImageV2 {
        id: redBox
        x: root.width-width-40; y: root.height-height
        source: "box_green.png"
        onClicked: anim.start()
        // onClicked: anim.restart()
        text: qsTr("standalone animation")
        NumberAnimation {
            id: anim
            target: redBox
            properties: "y"
            to: 40
            duration: 4000
        }
    }

}
