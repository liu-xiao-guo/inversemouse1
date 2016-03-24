import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "inversemouse1.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("inversemouse1")

        Rectangle {
            width: units.gu(40)
            height: units.gu(71)
            border.color: "yellow"
            border.width: units.gu(1)

            MouseArea {
                anchors.fill: parent
                onClicked: console.log("clicked on the root component")
            }

            Rectangle {
                id: blueRect
                width: units.gu(30)
                height: units.gu(51)
                anchors.centerIn: parent
                color: "blue"

                Rectangle {
                    width: units.gu(20)
                    height: units.gu(20)
                    anchors.centerIn: parent
                    color: "red"

                    InverseMouseArea {
                        anchors.fill: parent
                        sensingArea: blueRect
                        onClicked: console.log("clicked on the blue rect")
                    }
                }
            }
        }
    }
}

