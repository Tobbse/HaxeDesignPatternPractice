package strategy;

import openfl.display.Sprite;
import openfl.display.DisplayObject;

class CreateSquareStrategy implements ICreateShapeStrategy {
    public function createShape(xPos:Float, yPos:Float):DisplayObject {
        var circle = new Sprite();
		circle.graphics.beginFill(0x0000FF, 1);
        circle.graphics.drawRect(xPos, yPos, 50, 50);
        circle.graphics.endFill();
		return circle;
    }
}
