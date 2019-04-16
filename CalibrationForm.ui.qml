import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

PageBackground {
    id: pageBackground1
    width: 800
    height: 450
    property alias control: control
    today: "dd/MM/yy"

    property int w: -300
    property int h: 140
    property string number0: ""
    property string number1: ""
    property string number2: ""
    Keyboard {
        id: keyboarddynamic
        x: w
        y: 105
        z: 1
    }

    TextField {
        id: textField
        x: 443
        y: 97
        width: 204
        height: 40
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        font.family: "Arial"
        placeholderText: words.eng_words[9]
        text: keyboarddynamic.number0
        onPressed: pageBackground1.w = 0
    }

    Button {
        id: button
        x: 364
        y: 297
        width: 150
        height: 48
        text: words.eng_words[12]
        Layout.alignment: Qt.AlignLeft | Qt.AlignBaseline
        font.family: "Arial"
        font.weight: Font.Black
        font.bold: true
        font.pointSize: 12
        spacing: 9
        focusPolicy: Qt.StrongFocus
        autoExclusive: false
        autoRepeat: false
        checked: false
        checkable: true
        Material.accent: Material.Red
    }

    Button {
        id: button1
        x: 576
        y: 295
        width: 150
        height: 48
        text: words.eng_words[7]
        Layout.alignment: Qt.AlignLeft | Qt.AlignBaseline
        font.weight: Font.Black
        autoRepeat: false
        checked: false
        font.bold: true
        focusPolicy: Qt.StrongFocus
        spacing: 9
        font.pointSize: 12
        Material.accent: Material.Red
        checkable: true
        autoExclusive: false
        font.family: "Arial"
    }

    Label {
        id: label2
        x: 101
        y: 315
        width: 178
        height: 65
        color: "#000000"
        text: qsTr("#AG")
        font.bold: true
        font.pointSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Arial"
    }

    TextField {
        id: textField1
        x: 443
        y: 167
        width: 204
        height: 40
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        placeholderText: words.eng_words[10]
        font.family: "Arial"
        text: keyboarddynamic.number1
        onPressed: pageBackground1.w = 0
    }

    TextField {
        id: textField2
        x: 443
        y: 240
        width: 204
        height: 40
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        placeholderText: words.eng_words[11]
        font.family: "Arial"
        text: keyboarddynamic.number2
        onPressed: pageBackground1.w = 0
    }

    Button {
        id: closeBtn
        x: w
        y: 65
        width: 100
        height: 48
        text: words.eng_words[13]
        z: 1
        font.weight: Font.Black
        font.bold: true
        font.pointSize: 12
        highlighted: true
        Material.background: Material.Red
        checkable: true
        font.family: "Arial"
        onClicked: pageBackground1.w = -300
    }

    Label {
        id: label3
        x: 268
        y: 346
        width: 33
        height: 34
        color: "#000000"
        text: qsTr("gr")
        font.bold: true
        font.pointSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Arial"
    }

    Label {
        id: label4
        x: 135
        y: 275
        width: 44
        height: 34
        color: "#000000"
        text: qsTr("%0")
        font.bold: true
        font.pointSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Arial"
    }

    Label {
        id: label5
        x: 62
        y: 109
        width: 162
        height: 38
        color: "#000000"
        text: qsTr("%100")
        font.bold: true
        font.pointSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Arial"
    }

    Item {
        id: control
        property int value: 30
        x: 185
        y: 109
        width: 50
        height: 200

        Rectangle {
            x: 0
            y: 140
            width: 50
            height: parent.height * control.value / 100 // percentage
            color: "#f84521"
            z: 2
            anchors.bottomMargin: 0
            anchors.bottom: parent.bottom
        }

        Rectangle {
            z: 1
            color: "#f7ae9f"
            radius: 0
            anchors.fill: parent
            clip: true
        }
    }

    Rectangle {
        id: rectangle
        x: w + 100
        y: 70
        width: 160
        height: 38
        color: "#303030"

        Label {
            id: label6
            x: 0
            y: 0
            width: 160
            height: 38
            color: "#ffffff"
            z: 1
            text: keyboarddynamic.number
            font.family: "Arial"
            font.bold: true
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}

