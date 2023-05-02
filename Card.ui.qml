import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Bootstrap 5.3

Rectangle {
	property string imageSource:
	"https://offsetcode.com/themes/messenger/2.2.0/assets/img/avatars/6.jpg"
	property string nameText: "Bill Marrow"
	property string statusText: qsTr("last seen 3 days ago")

	radius: 9.6
	color: ApplicationWindow.window.Bootstrap.cardBg
	implicitHeight: 88.5

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
		}

		Label {
			text: statusText
			wrapMode: Label.Wrap
		}
	}
}
