import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

PageBackground {
    id: pageBackground1
    width: 800
    height: 450

    ComboBox {
        id: comboBox
        x: 597
        y: 90
        width: 203
        height: 40
        focusPolicy: Qt.ClickFocus
        font.pointSize: 10
        font.family: "Arial"
        model: ["g/s", words.eng_words[2], words.eng_words[3], "Kg/s", words.eng_words[4], words.eng_words[5]]
    }

    Label {
        id: label2
        x: 0
        y: 143
        width: 800
        height: 211
        color: "#de000000"
        text: qsTr("#value")
        font.family: "Arial"
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 200
        verticalAlignment: Text.AlignVCenter
    }
}
