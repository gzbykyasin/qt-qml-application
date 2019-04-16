import QtQuick 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import MyLang 1.0

ApplicationWindow {


    id: applicationWindow1
    visible: true
    width: 800
    height: 450
    title: words.eng_words[0]
    Material.theme: Material.Light
    Material.accent: Material.Red


    /*Component.onCompleted: {
        applicationWindow1.showFullScreen()
    }*/
    QtObject {
        id: words
        property var eng_words: [
            qsTr("Open Source App") + myTrans.emptyString,
            qsTr("Open Source Project") + myTrans.emptyString,
            qsTr("g/m") + myTrans.emptyString,
            qsTr("g/h") + myTrans.emptyString,
            qsTr("Kg/m") + myTrans.emptyString,
            qsTr("Kg/h") + myTrans.emptyString,
            qsTr("Main") + myTrans.emptyString,
            qsTr("Calibration") + myTrans.emptyString,
            qsTr("About") + myTrans.emptyString,
            qsTr("Calibration Weight") + myTrans.emptyString,
            qsTr("Selenoid Open Weight") + myTrans.emptyString,
            qsTr("Selenoid Close Weight") + myTrans.emptyString,
            qsTr("Offset") + myTrans.emptyString,
            qsTr("Close") + myTrans.emptyString,
            qsTr("Del") + myTrans.emptyString,
            qsTr("Cw") + myTrans.emptyString,
            qsTr("Sow") + myTrans.emptyString,
            qsTr("Scw") + myTrans.emptyString
        ]
    }

    StackLayout {
        id: swipeView
        x: 0
        width: 800
        height: 480
        anchors.rightMargin: 0
        anchors.bottomMargin: 1
        anchors.leftMargin: -13
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        currentIndex: tabBar.currentIndex

        Heating {
            Rectangle {
                id: rectangle
                x: 0
                y: 404
                width: 800
                height: 5
                color: "#000000"
            }

            ComboBox {
                id: languageselect
                x: 700
                y: 360
                width: 100
                height: 40
                font.family: "Arial"
                model: ["TR", "ENG","sad"]
                onCurrentIndexChanged: {
                    if (languageselect.currentText === "TR") {
                        myTrans.updateLanguage(MyLang.ENG)
                    }
                    else{
                         myTrans.updateLanguage(MyLang.TR)
                    }
                }
            }
        }

        Calibration {
            Rectangle {
                id: rectangle1
                x: 0
                y: 404
                width: 800
                height: 5
                color: "#000000"
            }
        }

        About {
            Rectangle {
                id: rectangle2
                x: 0
                y: 404
                width: 800
                height: 5
                color: "#000000"
            }
        }
    }

    TabBar {
        id: tabBar
        x: 0
        y: 409
        width: 800
        height: 40
        font.family: "Arial"
        contentHeight: 45
        contentWidth: 800
        anchors.rightMargin: 0
        anchors.bottomMargin: 1
        anchors.leftMargin: -10
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        currentIndex: swipeView.currentIndex

        TabButton {
            x: 2
            y: -1
            width: 293
            height: 40
            text: words.eng_words[6]
            display: AbstractButton.TextOnly
            checkable: true
            autoExclusive: true
            checked: true
            font.pointSize: 20
            font.bold: true
            font.family: "Arial"
            padding: 5
            rightPadding: 5
            leftPadding: 5
            bottomPadding: 5
            topPadding: 5
            Material.accent: Material.Red
        }

        TabButton {
            x: 296
            y: 0
            width: 265
            height: 40
            text: words.eng_words[7]
            font.pointSize: 20
            font.bold: true
            font.family: "Arial"
            padding: 5
            rightPadding: 5
            leftPadding: 5
            bottomPadding: 5
            topPadding: 5
            Material.accent: Material.Red
        }

        TabButton {
            x: 560
            y: 0
            width: 240
            height: 40
            text:words.eng_words[8]
            font.bold: true
            font.pointSize: 20
            bottomPadding: 5
            rightPadding: 5
            Material.accent: Material.Red
            topPadding: 5
            leftPadding: 5
            padding: 5
            font.family: "Arial"
        }
    }
}
