import QtQuick 2.10
import QtQuick.Controls 2.5

Item {
    id: btnItem
    property int side: 30
    property string text: ""
    Button {
        id: addBtn
        width: side
        height: width

        contentItem: Text {
            id: btnText
            color: "blue"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Arial"
            font.bold: true
            font.pointSize: parent.width/1.4142
            text: btnItem.text
        }

        background: Rectangle {
            id: backgroundRect
            color: "gray"
            border.color: "red"
            border.width: 1
            radius: width/2
        }

        onPressed: {
            backgroundRect.color = "white";
        }
        onReleased: {
            backgroundRect.color = "gray";
        }

        function setButtonText(str) {
            btnText.text = str;
        }
    }
}
