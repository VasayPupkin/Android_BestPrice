import QtQuick 2.10
import QtQuick.Window 2.10

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    RoundButton {
        id: addBtn
        anchors.fill: parent
        side: 100
        text: "X"
    }
}
