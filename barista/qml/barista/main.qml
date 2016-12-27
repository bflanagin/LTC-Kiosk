import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.0



Item {
    width: 1024
    height: 768
    id:mainwindow

    //property int offset: 112

    property double ing1: 200
    property double ing2: 240
    property double ing3: 200
    property double ing4: 0
    property double ing5: 0
    property double ing6: 0
    property double ing7: 0
    property double ing8: 0
    property double ing9: 0
    property double ing10: 0

    property double shot: 1
    property double cup: 8
    property double large: 16

    Text {
        id: drink_name
        x:0
        y:0
        z: 1
        font.pixelSize:parent.width * 0.10
        text: "Drink"
        color: "black"


    Text {
        id: cup_name_16
        text: "16oz"
        x: list_backing.x - (parent.width * 0.07)*text.length

        z:1
        font.pixelSize:parent.width * 0.10

        color: "lightgray"
        Image {
            source: "imgs/list_backing.png"
            anchors.fill: parent
        }
    }


    Text {
        id: cup_name_8
        text: " 8oz"
        //x: list_backing.x - (parent.width * 0.07)*text.length
        x: cup_name_16.x - (parent.width * 0.07)*text.length
        z:1
        font.pixelSize:parent.width * 0.10

        color: "lightgray"
        Image {
            source: "imgs/list_backing.png"
            anchors.fill: parent
        }
    }
    Text {
        id: demitasse
        text: "Demi"
        //x: list_backing.x - (parent.width * 0.07)*text.length
        x: cup_name_8.x - (parent.width * 0.07)*text.length

        z:1
        font.pixelSize:parent.width * 0.10

        color: "black"
        Image {
            source: "imgs/list_backing.png"
            anchors.fill: parent
        }
    }
    Text {
        id: shot
        text: "Shot"
        //x: list_backing.x - (parent.width * 0.07)*text.length
        x: demitasse.x - (parent.width * 0.07)*text.length
        z:1
        font.pixelSize:parent.width * 0.10

        color: "lightgray"
        Image {
            source: "imgs/list_backing.png"
            anchors.fill: parent
        }
    }

    Text {
        id: togo
        text: "To Go"
        //x: list_backing.x - (parent.width * 0.07)*text.length
        x: list_backing.x - (parent.width * 0.07)*text.length
        y:cup_name_16.height + 10
        z:1
        font.pixelSize:parent.width * 0.10

        color: "lightgray"
        Image {
            source: "imgs/list_backing.png"
            anchors.fill: parent
        }
    }

    Text {
        id: here
        text: "Here"
        //x: list_backing.x - (parent.width * 0.07)*text.length
        x: togo.x - (parent.width * 0.07)*text.length
        y: cup_name_16.height + 10
        z:1
        font.pixelSize:parent.width * 0.10

        color: "black"
        Image {
            source: "imgs/list_backing.png"
            anchors.fill: parent
        }
    }
}

    Rectangle {
        id: drink_backing
        x:0
        y:100
        width: parent.width * 0.75
        height: parent.height - y
        color: "white"
        clip: true

        Rectangle {
            id: ingr1
            color: "brown"
            x:0
            y:parent.height - ing1
            width:parent.width
            height:ing1 - 3

        }
         Rectangle {
            id: ingr2
            color: "tan"
            x:0
            y:ingr1.y - ing2
            width:parent.width
            height:ing2 - 3
        }
         Rectangle {
            id: ingr3
            color: "gray"
            x:0
            y:ingr2.y - ing3
            width:parent.width
            height:ing3 - 3
        }

         Rectangle {
            id: ingr4
            color: "lightgray"
            x:0
            y:ingr3.y - ing4
            width:parent.width
            height:ing4 - 3
        }
         Rectangle {
            id: ingr5
            color: "black"
            x:0
            y:ingr4.y - ing5
            width:parent.width
            height:ing5 - 3
        }

         Rectangle {
            id: ingr6
            color: "darkred"
            x:0
            y:ingr5.y - ing6
            width:parent.width
            height:ing6 - 3
        }
         Rectangle {
            id: ingr7
            color: "darkgreen"
            x:0
            y:ingr6.y - ing7
            width:parent.width
            height:ing6 - 3
        }
         Rectangle {
            id: ingr8
            color: "darkred"
            x:0
            y:ingr7.y - ing8
            width:parent.width
            height:ing8 - 3
        }
         Rectangle {
            id: ingr9
            color: "darkgreen"
            x:0
            y:ingr8.y - ing9
            width:parent.width
            height:ing9 - 3
        }
         Rectangle {
            id: ingr10
            color: "darkgreen"
            x:0
            y:ingr9.y - ing10
            width:parent.width
            height:ing10 - 3
        }


        Image {
        id:drink_container
        x:0
        y:0

        width:parent.width
        height:parent.height
        //fillMode:Image.PreserveAspectFit
        source: "imgs/backing.png"
        clip: true
        }

        Rectangle {
            x:20
            y:parent.height - ing1 + 40
            width:parent.width / 3.2
            height:3
            color:"black"

            Text {
                x:0
                y:-20
                text: "ingredient 1"
                color: "white"
            }
        }

        Rectangle {
            x:20
            y:ingr1.y - ing2 + 40
            width:parent.width / 3.2
            height:3
            color:"black"

            Text {
                x:0
                y:-20
                text: "ingredient 2"
                color: "white"
            }
        }

        Rectangle {
            x:20
            y:ingr2.y - ing3 + 40
            width:parent.width / 3.2
            height:3
            color:"black"

            Text {
                x:0
                y:-20
                text: "ingredient 3"
                color: "white"
            }
        }

        Rectangle {
            x:20
            y:ingr3.y - ing4 + 40
            width:parent.width / 3.2
            height:3
            color:"black"

            Text {
                x:0
                y:-20
                text: "ingredient 4"
                color: "white"
            }
        }

        Rectangle {
            x:20
            y:ingr4.y - ing5 + 40
            width:parent.width / 3.2
            height:3
            color:"white"

            Text {
                x:0
                y:-20
                text: "ingredient 5"
                color: "white"
            }
        }


    }
    Rectangle {
        id:list_backing
        x:drink_backing.width
        y:0
        width:parent.width - drink_backing.width
        height:parent.height
        color: "white"

        ListModel {
            id: drinkModel

            ListElement {
                name: "Espresso"
                cost: 2.45

            }
            ListElement {
                name: "Latte"
                cost: 2.45

            }
            ListElement {
                name: "Moca"
                cost: 2.45

            }
            ListElement {
                name: "Espresso"
                cost: 2.45

            }
            ListElement {
                name: "Espresso"
                cost: 2.45

            }


        }

        Component {
                id: drinkDelegate
                Item {
                    width: 100
                    height: 80
                    Column {
                    Text { text: name
                        font.pixelSize:list_backing.width / 4.5
                        wrapMode:Text.WordWrap
                        Image{id:backin;source: "imgs/list_backing.png";width:list_backing.width;height:80}
                        }
                    }
                }
            }

        ListView {
            id:drinks
            anchors.fill: parent
            model:drinkModel
            delegate: drinkDelegate
        }

       Image {
            id:barista_button
            x:0
            y:parent.height - 100

            width:parent.width
            height:parent.height - y - 1
            source: "imgs/list_backing.png"
            Text {
                id:user
                font.pixelSize:list_backing.width / 4.5
                //wrapMode:Text.WordWrap
                anchors.fill:parent
                text: "User"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

            }

            Rectangle {
                anchors.fill: parent
                color:"white"
                z:-1

            }
        }
    }

}
