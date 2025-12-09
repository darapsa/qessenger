import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Bootstrap

Item {
	width: 360
	height: 64

	Rectangle {
		id: roundedPill
		color: "#cc95aac9"
		radius: 100
		anchors.fill: parent

		RowLayout {
			anchors.fill: parent
			anchors.rightMargin: 8
			anchors.leftMargin: 8
			anchors.bottomMargin: 8
			anchors.topMargin: 8
			RoundButton {
				id: attachment
				display: AbstractButton.IconOnly
				flat: true
			}

			TextField {
				id: chatFormInput
				Layout.fillWidth: true
				placeholderText: qsTr("Type your message...")
			}

			RoundButton {
				id: emoji
				flat: true
				display: AbstractButton.IconOnly
				highlighted: false
			}

			RoundButton {
				id: send
				display: AbstractButton.IconOnly
				highlighted: false
			}
		}
	}
}
