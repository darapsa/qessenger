import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Bootstrap

Item {
	property string imageSource:
	"https://offsetcode.com/themes/messenger/2.2.0/assets/img/avatars/6.jpg"
	property alias imageArea: imageArea
	property string nameText: "Bill Marrow"
	property alias nameArea: nameArea
	property string statusText: qsTr("last seen 3 days ago")
	implicitHeight: 88.5

	Rectangle {
		anchors {
			fill: parent
			bottomMargin: 16
		}
		radius: 9.6
		color: ApplicationWindow.window.Bootstrap.cardBg

		Image {
			id: image
			anchors {
				left: parent.left
				leftMargin: 8
				verticalCenter: parent.verticalCenter
			}
			source: imageSource
			sourceSize {
				width: 44
				height: 44
			}
			layer.enabled: true
			layer.effect: OpacityMask {
				maskSource: Rectangle {
					width: 44
					height: 44
					radius: 22
				}
			}

			MouseArea {
				id: imageArea
				anchors.fill: parent
			}
		}
		ColumnLayout {
			spacing: 0
			anchors {
				left: image.right
				leftMargin: 8
				verticalCenter: parent.verticalCenter
			}

			Label {
				text: nameText
				wrapMode: Label.Wrap
				Bootstrap.heading: 5

				MouseArea {
					id: nameArea
					anchors.fill: parent
				}
			}

			Label {
				text: statusText
				wrapMode: Label.Wrap
			}
		}
	}
}
