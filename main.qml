import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import "qml"

Window {
    id: window
    visible: true
    width: 1024
    height: 768
    color: "#ffffff"
    title: qsTr("Hello World")

    Button{
        id:windowBtn
        x: 71
        y: 422
        onClicked: focusObjectChanged(window)
        anchors.fill: parent

        background: Rectangle{
        color:"#ffffff"
        anchors.fill: parent

        }

    }

    SlidersOwn{
        id: sliders
        x: 492
        width: sliders.width
        height: sliders.height
        anchors.top: up.bottom
        anchors.topMargin: 364

    }

    Row{
        id: up
        width: window.contentItem.width
        PhoneImage{
            width: 1024
            height: 45
        }

    }

    Row {
        id: searchBarContainer
        width: window.contentItem.width
        height: 82
        anchors.top: parent.top
        anchors.topMargin: 45

        SearchBar{
            id: searchBar
            y: 12
            height: 70
            anchors.rightMargin: 94
            anchors.topMargin: 12
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.left: parent.left
//            anchors.top: up.bottom

            BunBtn{
                x: 0
                anchors.right: parent.right
                anchors.rightMargin: -82
                anchors.top: parent.top
                anchors.topMargin: 0


            }

        }
    }

    Row {
        id: widgetsBarContainer2
        x: 0
        y: 698
//        width: window.activeFocusItem.width
        height: 70
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Rectangle {
            x: 0
            y: 698
            height: 70
            color: "#000000"
            anchors.fill:parent

            HomeBtn{
                x:0
                y: 0
                width: 146
            }

            RadioBtn{
                x: 146
                y:0
                width: 146

            }

            MusicBtn{
                x: 292
                y:0
                width: 146
            }

            DirectionBtn{
                x: 438
                y:0
                width: 146
            }
            PhoneBtn{
                x: 584
                y:0
                width: 146
            }
            HvacBtn{
                x: 730
                y:0
                width: 146
            }
            CarBtn{
                x: 876
                y:0
                width: 146
            }
        }
    }

    Row {
        id: widgetsBarContainer
        x: 15
        width: window.contentItem.width
        height: 240
        anchors.top: up.bottom
        anchors.topMargin: 110

        Rectangle {
            id: rectangle
            width: widgetsBarContainer.implicitWidth
            height: widgetsBarContainer.implicitHeight
            color: "#ffffff"

            RecentsBtn{
                x:0
                y: 0
                width: 243
                height: 240
            }

            SavedBtn{
                x: 243
                y: 0
                width: 243
                height: 240
            }

            StationsBtn{
                x: 486
                y: 0
                width: 243
                height: 240
            }

            FoodBtn{
                x: 731
                y: 0
                width: 243
                height: 240
            }

        }
    }


}









/*##^##
Designer {
    D{i:1;anchors_y:364}D{i:20;anchors_y:0}D{i:18;anchors_y:161}
}
##^##*/
