import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


PageBackground {
    id: pageBackground1
    width: 800
    height: 450

    Text {
        id: text2
        x: 108
        y: 287
        width: 584
        height: 50
        color: "#000000"
        text: qsTr("Qt Creator 4.2.0\nBased on Qt 5.7.1 (GCC 6.2.1 20161124, 32 bit)\nCopyright 2008-2016 The Qt Company Ltd. All rights reserved.")
        font.underline: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.italic: true
        font.family: "Times New Roman"
        font.pixelSize: 11
    }

    Text {
        id: text3
        x: 0
        y: 137
        width: 800
        height: 53
        color: "#000000"
        text: qsTr("Proje Yenilik")
        style: Text.Normal
        font.weight: Font.Black
        font.capitalization: Font.MixedCase
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 40
        font.italic: false
        font.family: "Arial"
    }

    Text {
        id: text4
        x: 0
        y: 212
        width: 800
        height: 54
        color: "#000000"
        text: qsTr("https://projeyenilik.com\n")
        font.weight: Font.Black
        font.bold: true
        font.pixelSize: 18
        font.capitalization: Font.MixedCase
        horizontalAlignment: Text.AlignHCenter
        style: Text.Normal
        verticalAlignment: Text.AlignBottom
        font.italic: false
        font.family: "Arial"
    }
}
