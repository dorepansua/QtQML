import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    // ColumnExample
    // {
    //     x:0
    //     y:0
    //     width: 120
    //     height:240
    // }



    // RowExample
    // {
    //     x:200
    //     y:200
    //     width: 120
    //     height:240
    // }

    // Grid
    // {
    //     id:grid
    //     rows:2
    //     columns:2
    //     anchors.centerIn: parent
    //     spacing:8

    //     RedSquare{}
    //     RedSquare{}
    //     RedSquare{}
    //     RedSquare{}

    // }

    Item{
        id: root
        width: 100
        height: 100

        Flow {
               anchors.fill: parent
               anchors.margins: 4
               spacing: 10

               Text { text: "Text"; font.pixelSize: 40 }
               Text { text: "items"; font.pixelSize: 40 }
               Text { text: "flowing"; font.pixelSize: 40 }
               Text { text: "inside"; font.pixelSize: 40 }
               Text { text: "a"; font.pixelSize: 40 }
               Text { text: "Flow"; font.pixelSize: 40 }
               Text { text: "item"; font.pixelSize: 40 }
           }
    }



}
