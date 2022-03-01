import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Rectangle {
    id: search
    x: 0
    y: 0
    width: 918
    height: 70
    color: "#f0f0f0"


    property alias aliasText1: searchInput.text


    GroupBox {
        id: searchBox
        width: search.width
        height: search.height
        padding: 0
        hoverEnabled: true
        focusPolicy: Qt.NoFocus
        background:Rectangle{
            color: "#f0f0f0"
            radius: 6
        }

        title: qsTr("")

        //        opacity: 0.9
        //        radius: 6

        //        property string color: "5053e5"

        Image {
            id: searchImage
            width: 34
            height: 34
            anchors.left: parent.left
            anchors.leftMargin: 17
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 18
            anchors.top: parent.top
            anchors.topMargin: 18
            source: "images/ico-floating-bar-search@3x.png"
            fillMode: Image.PreserveAspectCrop
            ColorOverlay{
                height: searchInput.implicitHeight
                anchors.fill:searchImage
                source: searchImage
                color:"#cfd0d1"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                antialiasing: false
            }
        }


        TextField {
            id: searchInput
            text: qsTr("")

            placeholderText: "Search for an address destination"
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 18
            anchors.rightMargin: 32
            anchors.leftMargin: 72
            anchors.topMargin: 18
            leftPadding: 0
            padding: 0
            font.pointSize: 20
            background: Rectangle {
                color: "#f0f0f0"
                       radius: 6
                       border.color: "#f0f0f0"
                       border.width: 0
                   }
        }
    }
}

/*##^##
Designer {
    D{i:3;anchors_height:46;anchors_width:46;anchors_x:16;anchors_y:12}
}
##^##*/
