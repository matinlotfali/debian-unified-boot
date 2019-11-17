/*
 *   Copyright 2018 mrmaire <maire.nunez@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.1


Image {
    id: root
    source: "images/background.png"

    property int stage

    onStageChanged: {        
        introAnimation.running = true        
    }
    Image {
        id: topRect
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height/4
        source: "images/rectangle.svg"
        Image {
            source: "images/tux.png"
            anchors.centerIn: parent
        }
        Rectangle {
            radius: 4
            color: "#2a2a2b"
            anchors {
                bottom: parent.bottom
                bottomMargin: 20
                horizontalCenter: parent.horizontalCenter
            }
            height: 8
            width: height*32
            Rectangle {
                radius: 3
                anchors {
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                }
                width: parent.width/2 + (parent.width / 6) * (stage - 1)/2
                color: "#ffffff"
//                 Behavior on width { 
//                     PropertyAnimation {
//                         duration: 250
//                         easing.type: Easing.InOutQuad
//                     }
//                 }
            }
        }
    }
}
