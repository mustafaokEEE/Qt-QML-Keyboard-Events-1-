import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Keyboard movement"
    color:"gray"

    Rectangle {
        id:firstRect
        width: 250
        height: 250
        color:"yellow"
        radius:20
        border.color:"black"
        border.width: 3
        property int step: 5;
        Text {
            text:"Keyboard Movement"
            font.pixelSize: 20
            anchors.centerIn:parent
            font.bold: true
        }
        x:150
        y:150
        focus:true
        Keys.onPressed: {
            switch(event.key) {
            case Qt.Key_Up:
                firstRect.y -=step;
                break;
            case Qt.Key_Down:
                firstRect.y +=step;
                break;
            case Qt.Key_Left:
                firstRect.x -=step;
                break;
            case Qt.Key_Right:
                firstRect.x +=step;
                break;
            }



        }




    }

}
