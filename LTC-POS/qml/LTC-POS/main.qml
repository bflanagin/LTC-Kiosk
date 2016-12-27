import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.0
import "main.js" as BackRoom

Item {
    width:1024
    height:768

 TabView {
     id:mainView
    width:parent.width
    height:parent.height
     count:4
    currentIndex: 0
    frameVisible: true

    style: TabViewStyle {
            frameOverlap: 1
            tab: Rectangle {
                color: styleData.selected ? "steelblue" :"lightsteelblue"
                border.color:  "steelblue"
                implicitWidth: Math.max(text.width + 14, 80)
                implicitHeight: 40
                radius: 2
                Text {
                    id: text
                    anchors.centerIn: parent
                    text: styleData.title
                    color: styleData.selected ? "white" : "black"
                    font.pixelSize: parent.height /2

                }
            }
            frame: Rectangle { color: "steelblue" }
        }

    Tab {
        title: "Drawer Balance"
        Item {
            width:parent.width
            height:parent.height


        Rectangle {
            id:current_balance_backing
            x: 10
            y:10
            height: parent.height * 0.20
            width: parent.width * 0.66
            color:"white"

            Text {
                x:0
                y:10
                width: parent.width
                font.pixelSize: parent.height * 0.70

                text: "Current Total"
                color:"#FFFFF0"
            }
            Text {
                x:0
                y:10
                id:total
                width: parent.width
                font.pixelSize: parent.height * 0.70
                text: "$0.00"
                horizontalAlignment : Text.AlignRight
            }
        }

        Rectangle {
            id:calculator_backing
            x:current_balance_backing.width + 20
            y:current_balance_backing.y
            width: parent.width * 0.31
            height:parent.height * 0.62
            color: "darkgrey"
            clip: true

            Rectangle {
                id:ctotal_backing
                x:08
                y:10
                width:parent.width * 0.94
                height:parent.height * 0.14
                color: "white"

                Text {
                    x:0
                    y:10
                    id:ctotal
                    width: parent.width
                    font.pixelSize: parent.height * 0.70
                    text: "0.00"
                    horizontalAlignment : Text.AlignRight
                }

            }

            Row {
                x:08
                y:ctotal_backing.height + 20

                Repeater {
                        model: 4
                        Rectangle {
                            width: ctotal_backing.width / 4
                            height: 40
                            border.width: 2

                            color: "lightgrey"
                        }
                      }
                    }

            Row {
                x:08
                y:ctotal_backing.height + 65

                Repeater {
                        model: 4
                        Rectangle {
                            width: ctotal_backing.width / 4
                            height: 40
                            border.width: 2

                            color: "lightgrey"
                        }
                      }
                    }


        Row {
            x:08
            y:ctotal_backing.height + 120

            Repeater {
                    model: 3
                    Rectangle {
                        id:onetwothree
                        width: ctotal_backing.width / 4
                        height: 60
                        border.width: 2

                        color: "lightgrey"

                        Text {
                            x:0
                            y:0
                            width:parent.width
                            height:parent.height
                            font.pixelSize: parent.height - 10
                            horizontalAlignment:Text.AlignHCenter
                            text:index + 7
                        }
                    }
                  }
                }

        Row {
            x:08
            y:ctotal_backing.height + 185

            Repeater {
                    model: 3
                    Rectangle {
                        width: ctotal_backing.width / 4
                        height: 60
                        border.width: 2

                        color: "lightgrey"

                        Text {
                            x:0
                            y:0
                            width:parent.width
                            height:parent.height
                            font.pixelSize: parent.height - 10
                            horizontalAlignment:Text.AlignHCenter
                            text:index + 4
                        }
                    }
                  }
                }

        Row {
            x:08
            y:ctotal_backing.height + 250

            Repeater {
                    model: 3
                    Rectangle {
                        width: ctotal_backing.width / 4
                        height: 60
                        border.width: 2

                        color: "lightgrey"

                        Text {
                            x:0
                            y:0
                            width:parent.width
                            height:parent.height
                            font.pixelSize: parent.height - 10
                            horizontalAlignment:Text.AlignHCenter
                            text:index + 1
                        }
                    }
                  }
                }


        Rectangle {
            x:08
            y:ctotal_backing.height + 315
            width:ctotal_backing.width * 0.75
            height: 60
            border.width: 2
            color: "lightgrey"

            Text {
                x:0
                y:0
                width:parent.width
                height:parent.height
                font.pixelSize: parent.height - 10
                horizontalAlignment:Text.AlignHCenter
                text:"0"
            }
        }
        }


        Rectangle {
            x:10
            y:current_balance_backing.height + 20
            width:calculator_backing.x - 20
            height:parent.height
            color: "white"

            ListView {

            }

        }


   }

        
        
        
        
}

    Tab {
     title: "Inventory"
     Item {
        //color: "lightgrey"
        height:parent.height
        width:parent.width


        Component {
            id: inventoryDelegate
            Item {
                width: 180; height: 40
                Column {
                    Text { text: '<b>Item:</b> ' + name + '<b>   Price:$' + number }
                    Text { text: '<b>In Stock:</b> ' + number + '<b> Sold:</b>' + number}

                }
            }
        }

        Rectangle {
           color: "white"
           id:inventoryBacking
           x:10
           y:10
           width: parent.width / 1.5
           height: parent.height * 0.98

        ListView {
            anchors.fill: parent
            delegate: inventoryDelegate
            highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
            focus: true
        }

     }
        Rectangle {
            id:addItem
            x:inventoryBacking.width + 20
            y:inventoryBacking.y
            width:parent.width - inventoryBacking.width - 30
            height:parent.height * 0.1
            color:"LightGrey"

            Text {
                x:0
                y:0
                width:parent.width
                height:parent.height
                font.pixelSize: parent.height - 20
                horizontalAlignment:Text.AlignHCenter
                verticalAlignment:Text.AlignVCenter
                text:"Add Item"
            }

        }

        Text {
            id:current_total_label
            x: inventoryBacking.width + 20
            y: addItem.height + 20
            font.pixelSize: addItem.height - 40
            text: "Current Totals:"

            Rectangle {
                x:0
                y:parent.height + 10
                width:addItem.width
                height:inventoryBacking.height
                color: "white"

            }
        }


     }

 }
    Tab {
        title: "Menu"
        Rectangle {
           color: "lightgrey"
           height:parent.height
           width:parent.width
        }

    }

    Tab {
        title: "Customers"
        Rectangle {
           color: "lightgrey"
           height:parent.height
           width:parent.width
        }

    }


 Tab {
     title: "Finance"
     Rectangle {
        color: "lightgrey"
        height:parent.height
        width:parent.width
     }

 }
 Tab {
     title: "Bill Tracking"
     Rectangle {
        color: "lightgrey"
        height:parent.height
        width:parent.width
     }

 }

 Component.onCompleted: BackRoom.tabs()

 }


}
