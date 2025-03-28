import QtQuick

Rectangle {
	id: root
	width: 32
	height: 32
	radius: 4
	color: squareColor // Use a different name here
	border.color: active ? "black" : "transparent"
	border.width: 2

	property color squareColor: "white" // Renamed from 'color' to 'squareColor'
	property bool active: false

	signal clicked()

	MouseArea {
		anchors.fill: parent
		onClicked: root.clicked()
	}
}

