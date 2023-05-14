import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Bootstrap 5.3

Item {
    width: 360

    RowLayout {
        id: rowLayout
        anchors.fill: parent

        ColumnLayout {
            Rectangle {
                id: rectangle
                width: 200
                height: 200
                color: "#2787f5"
                radius: 16
                Layout.fillWidth: true

                Label {
                    id: messageOut
                    text: qsTr("Hey, Marshall! How are you? Can you please change the color theme of the website to pink and purple? 😂")
                    anchors.fill: parent
                    wrapMode: Text.Wrap
                }
            }

            Label {
                id: messageText
                text: qsTr("08:45 PM")
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            }
        }

        Rectangle {
            id: messageOutAvatar
            width: 64
            height: 64
            color: "#ffffff"
            radius: 100
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64
            Layout.minimumHeight: 24
            Layout.minimumWidth: 24
            Layout.preferredHeight: 64
            Layout.preferredWidth: 64
            Layout.alignment: Qt.AlignRight | Qt.AlignBottom
        }
    }
}
