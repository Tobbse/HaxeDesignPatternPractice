package strategy;

import openfl.display.DisplayObject;
import openfl.display.Sprite;

class CreateCircleStrategy implements ICreateShapeStrategy {
    public function createShape(xPos:Float, yPos:Float):DisplayObject {
        var circle = new Sprite();
		circle.graphics.beginFill(0xFF0000, 1);
        circle.graphics.drawCircle(xPos, yPos, 50);
        circle.graphics.endFill();
		return circle;
    }
}
