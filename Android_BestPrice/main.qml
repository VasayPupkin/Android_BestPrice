import QtQuick 2.10
import QtQuick.Window 2.10

Window {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property int elementMargin: 5


//    RoundButton {
//        id: addButton
//        signal addBtnClicked()
////        anchors {
//////            bottom: mainWindow.bottom
////            right: mainWindow.right - 100
////            top: mainWindow.top
////        }

//        side: 40
//        x: mainWindow.width - side - elementMargin
//        y: mainWindow.height - side - elementMargin
//        text: "+"
//        onButtonClicked: {
//            addBtnClicked();
//        }
//    }

//    RoundButton {
//        signal resetBtnClicked()
//        id: resetBtn
//        anchors {
//            right: addButton.left
//            top: addButton.top
//            bottom: addButton.bottom
//        }

//        side: 40
//        text: "-"
//        onButtonClicked: {
//            resetBtnClicked();
//        }
//    }
    RoundButton {
        id: addButton
        parent: mainWindow
        text: "+"
        side: 100
        anchors {
            bottom: parent.bottom
            right: parent.right
            bottomMargin: elementMargin
            rightMargin: elementMargin
        }
    }

    RoundButton {
        id: resetButton
        parent: mainWindow
        text: "X"
        side: 100
        anchors {
            bottom: parent.bottom
            right: addButton.left
            bottomMargin: elementMargin
            rightMargin: elementMargin
        }
    }
}
