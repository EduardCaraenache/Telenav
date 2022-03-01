import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

    Button {
        id: stationButton
        width: 243
        height: 240
        property color btnColorDefault: "#ffffff"
        property color btnColorMouseOver: "#f0f0f0"
        property color btnColorClicked: "#212224"

        QtObject{
            id:internal


            property var dynamicColor: if(stationButton.down){
                                           stationButton.down ? btnColorClicked : btnColorDefault
                                        }else{
                                           stationButton.hovered ? btnColorMouseOver : btnColorDefault
                                       }
        }


        background: Rectangle{
        color:internal.dynamicColor
        radius:10

        }

        Image {
            id: stationImage
            x: 49
            y: 16
            anchors.rightMargin: 57
            anchors.leftMargin: 57
            anchors.bottomMargin: 88
            anchors.topMargin: 22
            anchors.fill: parent
            source: "images/ico-search-gas-stations@3x.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: stationText
            x: -2
            y: 128
            width: 224
            height: 94
            color: "#5035e3"
            text: qsTr("Gas Stations")
            anchors.rightMargin: 6
            anchors.leftMargin: 6
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
            anchors.topMargin: 134
            verticalAlignment: Text.AlignTop
            anchors.bottomMargin: 8
        }



        onClicked: Qt.openUrlExternally("https://www.youtube.com/watch?v=3jVc8coAUhc")


    }


