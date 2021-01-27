package strategy;

import openfl.display.Sprite;
import openfl.display.DisplayObject;

class CreateRectStrategy implements ICreateShapeStrategy {
    public function createShape(xPos:Float, yPos:Float):DisplayObject {
        var circle = new Sprite();
		circle.graphics.beginFill(0x00FF00, 1);
        circle.graphics.drawRect(xPos, yPos, 100, 50);
        circle.graphics.endFill();
		return circle;
    }
}
