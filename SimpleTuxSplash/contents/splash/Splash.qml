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


Rectangle {
    id: root
    color: "#000000"

    property int stage

    onStageChanged: {        
        introAnimation.running = true        
    }    
    
    Image {
        source: "/sys/firmware/acpi/bgrt/image"
        anchors.horizontalCenter: parent.horizontalCenter        
        y: root.height/3 - 6
    }
    Image {
        source: "images/watermark.png"
        anchors {
            horizontalCenter: parent.horizontalCenter                
            bottom: parent.bottom
            bottomMargin: root.height*0.04
        }
    }
    Rectangle {
        radius: 4
        color: "#2a2a2b"
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height * 0.7 - 2
        height: 8
        width: height*32
        Rectangle {
            radius: 3
            anchors {
                left: parent.left
                top: parent.top
                bottom: parent.bottom
            }
            width: parent.width*3/4 + (parent.width / 6) * (stage)/4
            color: "#ffffff"
            Behavior on width { 
                PropertyAnimation {
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
