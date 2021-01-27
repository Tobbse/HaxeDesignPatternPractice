package strategy;

import openfl.display.DisplayObject;

interface ICreateShapeStrategy {
    function createShape(xPos:Float, yPos:Float):DisplayObject;
}
