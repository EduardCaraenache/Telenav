import QtQuick 2.12
import QtQuick.Controls 2.12

//Grid {
//    id: recents
//    width: 243
//    height: 240

    Button {
        id: recentsButton
        width: 243
        height: 240
        rightPadding: 0
        leftPadding: 0
        padding: 0
        property color btnColorDefault: "#ffffff"
        property color btnColorMouseOver: "#f0f0f0"
        property color btnColorClicked: "#212224"

        QtObject{
            id:internal


            property var dynamicColor: if(recentsButton.down){
                                           recentsButton.down ? btnColorClicked : btnColorDefault
                                        }else{
                                           recentsButton.hovered ? btnColorMouseOver : btnColorDefault
                                       }
        }

        background: Rectangle{
        color:internal.dynamicColor
        radius:10

        }

        Image {
            id: recentsImage
            x: 49
            y: 16
            anchors.rightMargin: 57
            anchors.leftMargin: 57
            anchors.bottomMargin: 88
            anchors.topMargin: 22
            anchors.fill: parent
            source: "images/ico-search-recents@3x.png"
            fillMode: Image.PreserveAspectFit
        }


        Text {
            id: recentsText
            x: -2
            y: 128
            width: 224
            height: 94
            color: "#5035e3"
            text: qsTr("Recents")
            font.family: "NotoSans"
            anchors.rightMargin: 6
            anchors.leftMargin: 6
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
            anchors.topMargin: 134
            verticalAlignment: Text.AlignTop
            anchors.bottomMargin: 8
        }


        onClicked: Qt.openUrlExternally("https://www.youtube.com/watch?v=AdcwxuZkUb4&list=PLnQoT7ZhOYcMQkBWs5kevn1vWCG-LBfDi")



    }
//}
