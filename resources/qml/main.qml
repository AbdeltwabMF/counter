import QtQuick

Window {
    id: root

    width: 640
    height: 480

    visible: true
    title: qsTr("Counter")

    color: "#FCF1C7"

    Rectangle {
        id: rect

        x: 16
        y: 16

        width: root.width - 32
        height: root.height - 32
        radius: 8

        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#FCF1C7"
            }
            GradientStop {
                position: 1.0
                color: "#EBDBB2"
            }
        }

        Text {
            id: text

            x: (parent.width - width) / 2
            y: (parent.height - height) / 2

            color: "#CC241D"
            font {
                family: "Quicksand"
                pixelSize: 64
            }

            property int counter: 0
            function increment() {
                counter++
            }

            function reset() {
                counter = 0
            }

            focus: true
            Keys.onSpacePressed: increment()
            Keys.onEscapePressed: reset()

            text: counter
        }
    }
}
