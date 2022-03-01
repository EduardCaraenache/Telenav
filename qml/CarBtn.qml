import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Button {
        id: bunBtn

        property url btnIconSource: "images/ico-back@2x.png"
        property color btnColorDefault: "#000000"
        property color btnColorMouseOver: "#212224"
        property color btnColorClicked: "#5035e3"

        QtObject{
            id:internal

            //MouseOver & Click
            property var dynamicColor: if(bunBtn.down){
                                            bunBtn.down ? btnColorClicked : btnColorDefault
                                       }else{
                                            bunBtn.hovered ? btnColorMouseOver : btnColorDefault
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
            source: "images/ico-system-bar-car@3x.png"
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


              onClicked: Qt.openUrlExternally("https://www.youtube.com/watch?v=4HLq9Ki06fw")
}
