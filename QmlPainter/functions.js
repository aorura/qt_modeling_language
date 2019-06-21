
var color = 'black';   // color of the pen, here the dynamic rectangle
var width = 50;        // width of the pen
var height = 50;       // height of the pen

function paintshape(x,y)
{
   var object = Qt.createQmlObject('import QtQuick 2.0; Rectangle {id: indrect; width:'+width+'; height:'+height+'; radius:'+ width/2 +'; color: "'+color+'"; }', rect, "dynamicSnippet"+x); // create a rectangle on the fly
   object.x = x; // set it at a perticular location on the screen
   object.y = y;
}

function setColorSize(c,w,h) {
    color=c;
    width=w;
    height=h;
}

function setSizeInc() {
    width=width+10;
    height=height+10;
}

function setSizeDec() {
    width=width-10;
    height=height-10;
}

