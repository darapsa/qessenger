import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

Page {
	property string titleText: qsTr("Bootstrap Community")

	header: ToolBar {
		Label {
			text: titleText
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
		model: [11, 1, 6, 1, 11, 1, 7, 1, 11, 1]
		delegate: Item {
			width: listView.width
			height: message.height + 16

			ColumnLayout {
				id: message
				width: parent.width
				layoutDirection: modelData === 1 ? Qt.RightToLeft : Qt.LeftToRight
				anchors {
					left: modelData !== 1 ? messageAvatar.right : undefined
					right: modelData === 1 ? messageAvatar.left : undefined
					bottom: parent.bottom
				}
				spacing: 8

				Label {
					id: messageText
					text: qsTr("Hey, Marshall! How are you? Can you please change the color theme of the website to pink and purple? 😂")
					wrapMode: Text.Wrap
					rightPadding: 20
					leftPadding: 20
					bottomPadding: 16
					topPadding: 16
					Layout.maximumWidth: parent.width - (messageAvatar.width + 16)
					background: Rectangle {
						radius: 16
						color: modelData == 1 ? "#2787f5" : "#95aac9"
					}
				}

				Label {
					id: messageTimestamp
					text: qsTr("08:45 PM")
				}
			}

			Image {
				id: messageAvatar
				anchors {
					left: modelData !== 1 ? parent.left : undefined
					right: modelData === 1 ? parent.right : undefined
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
					effect: MultiEffect {
						maskEnabled: true
						maskSource: maskRectangle
					}
				}
				Rectangle {
					id: maskRectangle
					width: 26
					height: 26
					radius: 13
					layer.enabled: true
					visible: false
				}
			}
		}
	}

	footer: Pane {
		RowLayout {
			width: parent.width
			Rectangle {
				color: "#ebf1f7"
				anchors.fill: parent
				radius: 100
			}

			TextArea {
				id: messageField
				Layout.fillWidth: true
				placeholderText: qsTr("Type your message...")
				wrapMode: TextArea.Wrap
				Layout.leftMargin: 16
			}

			RoundButton {
				id: sendButton
				text: qsTr("Send")
				icon.source: "../qeduport/Material/svg/outlined/send.svg"
				display: AbstractButton.IconOnly
				Layout.margins: 8
				enabled: messageField.length > 0
			}
		}
	}
}
