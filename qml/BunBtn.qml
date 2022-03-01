import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Button {
        id: bunBtn

        property url btnIconSource: "images/ico-back@2x.png"
        property url textarao: "SearchBar.qml"
        property color btnColorDefault: "#ffffff"
        property color btnColorMouseOver: "#f0f0f0"
        property color btnColorClicked: "#212224"
        property var msg: ""



        QtObject{
            id:internal

            //MouseOver & Click
            property var dynamicColor: if(bunBtn.down){
                                            bunBtn.down ? btnColorClicked : btnColorDefault
                                       }else{
                                            bunBtn.hovered ? btnColorMouseOver : btnColorDefault
                                       }
        }

        implicitWidth: 70
        implicitHeight: 70


        background: Rectangle{
            id: bgBtn
            color: internal.dynamicColor
            radius: 6
            opacity: 0.9

        }

        Image{
            id:imgBtn
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
                source: "images/ico-button-action-bar-end@3x.png"
                height: 40
            width: 40
            fillMode:  Image.PreserveAspectFit
            }

//        ColorOverlay{
//            anchors.fill:imgBtn
//            source: imgBtn
//            color:"#ffffff"
//            antialiasing: false
//        }

        QtObject{
            id:internal1

            //MouseOver & Click
            property var dynamicColor: if(bunBtn.down){
                                            bunBtn.down ? btnColorClicked : btnColorDefault
                                       }else{
                                            bunBtn.hovered ? btnColorMouseOver : btnColorDefault
                                       }
        }

        onClicked:{ focusObjectChanged(window)
            textarao.text = msg;
}


}
