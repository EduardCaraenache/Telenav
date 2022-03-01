import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Button {
        id: musicBtn

        property url btnIconSource: "images/ico-back@2x.png"
        property color btnColorDefault: "#000000"
        property color btnColorMouseOver: "#212224"
        property color btnColorClicked: "#5035e3"
        width: 146
        height: 70

        QtObject{
            id:internal

            //MouseOver & Click
            property var dynamicColor: if(musicBtn.down){
                                            musicBtn.down ? btnColorClicked : btnColorDefault
                                       }else{
                                            musicBtn.hovered ? btnColorMouseOver : btnColorDefault
                                       }
        }

        implicitWidth: 146
        implicitHeight: 70


        background: Rectangle{
            id: bgBtn
            color: internal.dynamicColor

        }

//        layer.enabled: true
//        layer.effect: DropShadow {
//            transparentBorder: true
//            horizontalOffset: 8
//            verticalOffset: 6
//        }

        Image{
            id:imgBtn
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/ico-system-bar-music@3x.png"
            height: 70
            width: 40
            fillMode:  Image.PreserveAspectFit
            }

        ColorOverlay{
            anchors.fill:imgBtn
            source: imgBtn
            color:"#ffffff"
            antialiasing: false
        }


              onClicked: Qt.openUrlExternally("https://www.youtube.com/watch?v=O61eEJ0xCJ8")

}
