import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0


Rectangle {
    id: rectangle
    Material.theme: Material.Light
    Material.accent: Material.Red
    width: 800
    height: 450
    clip: true

    property int hours
    property int minutes
    property int seconds
    property string today

    function timeChanged() {
        var date = new Date
        hours = date.getHours()
        minutes = date.getMinutes()
        seconds = date.getUTCSeconds()
        today = Qt.formatDate(date, "dd/MM/yy")
    }

    Timer {
        interval: 100
        running: true
        repeat: true
        onTriggered: rectangle.timeChanged()
    }

    Label {
        id: label
        text: ""
    }

    Label {
        id: label1
        x: 399
        y: 8
        width: 159
        height: 40
        color: "#000000"
        text: qsTr("Proje Yenilik")
        font.family: "Arial"
        font.bold: true
        font.pointSize: 19
    }

    Label {
        id: label2
        x: 299
        y: 47
        width: 358
        height: 26
        color: "#000000"
        text: words.eng_words[1]
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Arial"
        font.bold: true
        font.pointSize: 15
    }

    Label {
        id: label3
        x: 677
        y: 13
        width: 118
        height: 26
        color: "#000000"
        text: qsTr(rectangle.today)
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Arial"
        font.bold: true
        font.pointSize: 18
    }

    Label {
        id: label4
        x: 689
        y: 40
        width: 92
        height: 26
        color: "#000000"
        text: qsTr(rectangle.hours + ":" + rectangle.minutes + ":" + rectangle.seconds)
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Arial"
        font.bold: true
        font.pointSize: 18
    }

    Image {
        id: image
        x: 4
        y: 7
        width: 125
        height: 63
        source: "images/openSource.png"
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 75
        width: 800
        height: 10
        color: "#000000"
    }
}
