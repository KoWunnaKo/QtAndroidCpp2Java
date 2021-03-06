import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Window {
    visible: true
    width: 360
    height: 360

    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(0/255, 153/255, 51/255, 1.0)

        ColumnLayout {
            anchors.fill: parent
            spacing: 100

            Item { Layout.fillHeight: true }

            Button {
                text: "Get me some string from Java"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: theText.text = _cpp.getStringFromJava(123)
            }

            Text {
                id: theText
                anchors.horizontalCenter: parent.horizontalCenter
                text: "some default text"
            }

            Item { Layout.fillHeight: true }
        }
    }
}
