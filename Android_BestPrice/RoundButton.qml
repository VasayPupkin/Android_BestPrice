import QtQuick 2.10
import QtQuick.Controls 2.5

//Item {
//    id: btnItem
//    property int side: 30
//    property string text: ""
//    signal buttonClicked()

//    Button {
//        id: addBtn
//        width: side
//        height: width

//        contentItem: Text {
//            id: btnText
//            color: "blue"
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//            font.family: "Arial"
//            font.bold: true
//            font.pointSize: parent.width/1.4142
//            text: btnItem.text
//        }

//        background: Rectangle {
//            id: backgroundRect
//            color: "gray"
//            border.color: "red"
//            border.width: 1
//            radius: width/2
//        }

//        onClicked: {
//            buttonClicked();
//        }

//        onPressed: {
//            backgroundRect.color = "white";
//        }
//        onReleased: {
//            backgroundRect.color = "gray";
//        }

//        function setButtonText(str) {
//            btnText.text = str;
//        }
//    }
//}


Rectangle {
    id: button

    property bool checked: false
    property alias text : buttonText.text
    property int side: 30
    property color gradcolor: "blue"
    Accessible.name: text
    Accessible.description: "This button does " + text
    Accessible.role: Accessible.Button
    Accessible.onPressAction: {
        button.clicked()
    }

    signal clicked

    function setGradient() {
        button.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
    }

    width: side
    height: side
//    color: "blue"
    gradient: Gradient {
        GradientStop { position: 0.0; color: "lightsteelblue" }
//        GradientStop { position: 1.0;
//            color: button.focus ? "red" : "blue" }
        GradientStop { position: 1.0; color: button.gradcolor }
    }

    radius: side/2
    antialiasing: true

    Text {
        id: buttonText
        text: parent.description
        anchors.centerIn: parent
        font.pixelSize: parent.width/1.4142
        style: Text.Sunken
        color: "white"
        styleColor: "black"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: parent.clicked()
        onPressed: {
            parent.gradcolor = "red";
        }
        onReleased: {
            parent.gradcolor = "blue";
        }

        onEntered: {
            parent.gradcolor = "green";
        }
        onExited: {
            parent.gradcolor = "blue";
        }
    }

    Keys.onSpacePressed: clicked()
}
