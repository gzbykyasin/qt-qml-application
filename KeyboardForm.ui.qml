import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

PageBackground {
    id: pageBackground1
    width: 260
    height: 290

    property string number: ""
    property string number0: ""
    property string number1: ""
    property string number2: ""

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 260
        height: 290
        color: "#303030"

        Button {
            id: number1
            x: 20
            y: 21
            width: 60
            height: 40
            text: qsTr("1")
            font.pointSize: 15
            font.bold: true
            font.family: "Arial"
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "1"
        }
        Button {
            id: number2
            x: 100
            y: 21
            width: 60
            height: 40
            text: qsTr("2")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "2"
        }
        Button {
            id: number3
            x: 181
            y: 21
            width: 60
            height: 40
            text: qsTr("3")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "3"
        }
        Button {
            id: number4
            x: 20
            y: 74
            width: 60
            height: 40
            text: qsTr("4")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "4"
        }
        Button {
            id: number5
            x: 100
            y: 74
            width: 60
            height: 40
            text: qsTr("5")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "5"
        }
        Button {
            id: number6
            x: 181
            y: 74
            width: 60
            height: 40
            text: qsTr("6")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "6"
        }
        Button {
            id: number7
            x: 20
            y: 129
            width: 60
            height: 40
            text: qsTr("7")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onPressed: pageBackground1.number = pageBackground1.number + "7"
        }
        Button {
            id: number8
            x: 100
            y: 129
            width: 60
            height: 40
            text: qsTr("8")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "8"
        }
        Button {
            id: number9
            x: 181
            y: 129
            width: 60
            height: 40
            text: qsTr("9")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "9"
        }
        Button {
            id: number10
            x: 20
            y: 183
            width: 60
            height: 40
            text: qsTr(",")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + ","
        }
        Button {
            id: number0
            x: 100
            y: 183
            width: 60
            height: 40
            text: qsTr("0")
            font.family: "Arial"
            font.pointSize: 15
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = pageBackground1.number + "0"
        }
        Button {
            id: number11
            x: 181
            y: 183
            width: 60
            height: 40
            text: words.eng_words[14]
            font.capitalization: Font.AllUppercase
            font.family: "Arial"
            font.pointSize: 13
            font.bold: true
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number = ""
        }

        Button {
            id: number12
            x: 20
            y: 235
            width: 60
            height: 40
            text: words.eng_words[15]
            font.capitalization: Font.AllUppercase
            font.family: "Arial"
            font.bold: true
            font.pointSize: 13
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number0 = pageBackground1.number
        }

        Button {
            id: number13
            x: 100
            y: 235
            width: 60
            height: 40
            text: words.eng_words[16]
            font.capitalization: Font.AllUppercase
            font.family: "Arial"
            font.bold: true
            font.pointSize: 13
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number1 = pageBackground1.number
        }

        Button {
            id: number14
            x: 181
            y: 235
            width: 60
            height: 40
            text: words.eng_words[17]
            font.capitalization: Font.AllUppercase
            focusPolicy: Qt.StrongFocus
            font.family: "Arial"
            font.bold: true
            font.pointSize: 13
            Material.background: Material.Red
            highlighted: true
            onClicked: pageBackground1.number2 = pageBackground1.number
        }
    }
}
