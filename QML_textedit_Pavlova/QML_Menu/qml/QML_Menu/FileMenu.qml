

import QtQuick 1.0
//import "./FileDialog.qml"

Rectangle {
    id: fileMenu
    height: 480; width:1000
    property color buttonBorderColor: "#7F8487"
    property color buttonFillColor: "#8FBDCACD"
    property string fileContent:directory.fileContent

    //the menuName is accessible from outside this QML file
    property string menuName: "File"

    //used to divide the screen into parts.
    property real partition: 1/3

    color: "#6C646A" 
        gradient: Gradient {
                        GradientStop { position: 0.0; color: "#6C646A" }
                        GradientStop { position: 1.0; color: Qt.darker("#6A6D6A") }
        }
        Rectangle {
            id:actionContainer
             color:"transparent"
            anchors.centerIn: parent
            width: parent.width; height: parent.height / 5
            Row {
                anchors.centerIn: parent
                spacing: parent.width/9
                Button {
                    id: newButton
                    buttonColor: buttonFillColor
                    label: "New"
                    labelSize: 16
                    borderColor: buttonBorderColor
                    height: actionContainer.height; width: actionContainer.width/6

                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                        GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                    }

                }
                Button {
                    id: openButton
                    height: actionContainer.height; width: actionContainer.width/6
                    buttonColor: buttonFillColor
                    label: "Open"
                    borderColor: buttonBorderColor
                    labelSize: 16
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                        GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                    }

                }
                Button {
                    id: saveButton
                    label: "Save"
                    height: actionContainer.height; width: actionContainer.width/6
                    labelSize: 16
                    buttonColor: buttonFillColor
                    borderColor:buttonBorderColor
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                        GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                    }

                }
                Button {
                    id: saveasButton
                    label: "Save As"
                    height: actionContainer.height; width: actionContainer.width/6
                    labelSize: 16
                    buttonColor: buttonFillColor
                    borderColor:buttonBorderColor
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                        GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                    }

                }
            }
        }
}
