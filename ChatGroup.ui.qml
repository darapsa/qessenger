import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Bootstrap 5.3

Page {
	property string titleText: qsTr("Bootstrap Community")

	header: ToolBar {
		Label {
			text: titleText
			Bootstrap.heading: 5
			anchors.centerIn: parent
		}
	}

	ListView {
		id: listView
		anchors {
			fill: parent
			leftMargin: 20
			rightMargin: 20
		}
		model: [ 11, 1, 6, 1, 11, 1, 7, 1, 11, 1]
		delegate: Item {
			implicitWidth: listView.width
			implicitHeight: column.height

			ColumnLayout {
				id: column
				width: parent.width
				layoutDirection: modelData === 1
					? Qt.RightToLeft : Qt.LeftToRight
				anchors {
					left: modelData === 1
						? parent.left : undefined
					right: modelData !== 1
						? parent.right : undefined
					bottom: parent.bottom
				}

				Label {
					text: qsTr("Hey, Marshall! How are you? Can you please change the color theme of the website to pink and purple? 😂")
					wrapMode: Label.Wrap
					Layout.fillWidth: true
				}

				Label {
					text: qsTr("08:45 PM")
				}
			}

			Image {
				anchors {
					left: modelData !== 1
						? parent.left : undefined
					right: modelData === 1
						? parent.right : undefined
					bottom: parent.bottom
				}
				source: "https://offsetcode.com/themes/messenger/2.2.0/assets/img/avatars/"
						+ modelData + ".jpg"
				sourceSize {
					width: 26
					height: 26
				}
				layer {
					enabled: true
					effect: OpacityMask {
						maskSource: Rectangle {
							width: 26
							height: 26
							radius: 13
						}
					}
				}
			}
		}
	}

	footer: Pane {
		RowLayout {
			width: parent.width

			TextArea {
				id: messageField
				Layout.fillWidth: true
				placeholderText: qsTr("Type your message...")
				wrapMode: TextArea.Wrap
			}

			Button {
				id: sendButton
				text: qsTr("Send")
				enabled: messageField.length > 0
			}
		}
	}
}
