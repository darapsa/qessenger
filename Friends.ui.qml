import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Bootstrap 5.3

Flickable {
	contentHeight: container.height + 28

	ColumnLayout {
		id: container
		anchors {
			top: parent.top
			topMargin: 28
			left: parent.left
			leftMargin: 20
			right: parent.right
			rightMargin: 20
		}

		Label {
			text: qsTr("Friends")
			Bootstrap.heading: 2
			Layout.bottomMargin: 28
		}

		ListView {
			id: list
			interactive: false
			implicitHeight: count * 88.5
			model: ListModel {
				ListElement {
					image: "https://offsetcode.com/themes/messenger/2.2.0/assets/img/avatars/6.jpg"
					name: "Bill Marrow"
					status: qsTr("last seen 3 days ago")
				}
				ListElement {
					image: "https://offsetcode.com/themes/messenger/2.2.0/assets/img/avatars/5.jpg"
					name: "Damien Binder"
					status: qsTr("last seen within a week")
				}
				ListElement {
					image: ""
					name: "Don Knight"
					status: qsTr("online")
				}
			}
			delegate: Card {
				width: list.width
				imageSource: image
				nameText: name
				statusText: status
			}
		}
	}
}
