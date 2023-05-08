import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Bootstrap 5.3

Flickable {
	property string titleText: qsTr("Bootstrap Community")
	contentHeight: container.height

	ColumnLayout {
		id: container
		anchors {
			top: parent.top
			left: parent.left
			leftMargin: 20
			right: parent.right
			rightMargin: 20
		}

		Label {
			text: titleText
			Bootstrap.heading: 5
			Layout.topMargin: 12
			Layout.bottomMargin: 12
		}
	}
}
