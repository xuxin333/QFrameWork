import QtQuick 2.0

Item {
    signal sideBarIndex(string index);

    width: confi.siderBarWidth;
    height: confi.siderBarHeight;
    ListView {
        anchors.fill: parent
        model:toolBarModel
        delegate: Item {
            id:toolBarItem
            width: 100;
            height: 90;
            ToolBar{
                names:name
                path:iconPath
            }
            MouseArea {
            anchors.fill: parent
                onClicked: {
                    toolBarItem.ListView.view.currentIndex = index;
                    sideBarIndex(index);
                    console.log(index);
                }
            }
        }


        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        highlightFollowsCurrentItem:true;
        focus: true
    }
}

