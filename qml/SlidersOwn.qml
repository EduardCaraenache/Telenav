import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Rectangle{
    id: rectangle
    width: 36
    height: 8

    SwipeView {
        id: view
        width: 100
        height: 100
        anchors.horizontalCenterOffset: 0
        padding: 0
        anchors.top: pageIndicator.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter
        currentIndex: pageIndicator.currentIndex


        Page {

            title: qsTr("Home")

            background: Rectangle{
                color:"#5035e3"
                radius:50
            }

            Text {
                id: element0
                x: 23
                y: 13
                width: 54
                height: 75
                text: qsTr("U")
                color:"#ffffff"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 64


            }

        }
        Page {
            width: 0
            height: 0
            title: qsTr("Discover")
            background:Rectangle{
                color:"#5035e3"
                 radius:50
            }

        Text {
            id: element1
            x: 23
            y: 13
            width: 54
            height: 75
            text: qsTr("Are")
            color: "#ffffff"
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 42
            horizontalAlignment: Text.AlignHCenter

        }

        }
        Page {
            title: qsTr("Activity")
            background:Rectangle{
                color:"#5035e3"
                 radius:50
            }

        Text {
            id: element2
            x: 0
            y: 0
            width: 100
            height: 100
            text: qsTr("Awesome")
             color: "#ffffff"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 22
        }

    }
}

PageIndicator {
    id: pageIndicator
    y: 0
    width: 36
    padding: 0
    anchors.bottomMargin: -8
    interactive: true
    count: view.count
    currentIndex: view.currentIndex

    anchors.bottom: parent.top
    anchors.horizontalCenter: parent.horizontalCenter
    delegate: Rectangle {
        implicitWidth: 8
        implicitHeight: 8

        radius: width / 2
        color: "#5035e3"

        opacity: index === pageIndicator.currentIndex ? 0.95 : 0.3
    }
}


}
