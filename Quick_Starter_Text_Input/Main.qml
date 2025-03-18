import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")




    // Rectangle{
    //     width:200
    //     height:80
    //     color:"yellow"

    //     TextInput{
    //         id: input1
    //         x: 8
    //         y: 8
    //         width: 96
    //         height: 20
    //         focus: true
    //         text: "Text input 1"
    //         KeyNavigation.tab: input2
    //     }

    //     TextInput{
    //         id:input2
    //         x:8
    //         y:36
    //         width:96
    //         height: 20
    //         text:"Text Input 2"
    //         KeyNavigation.tab: input1
    //     }
    // }





    Rectangle {

        TLineEditV2 {
            x: 100
            y: 100
            width: 100
            height: 50
            id: input1

            KeyNavigation.tab: input2

        }
        TLineEditV2 {
            x: 200
            y:  200

            width: 100
            height: 50
            id: input2

            KeyNavigation.tab: input1

        }
    }
}
