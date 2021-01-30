package composite;

import openfl.geom.Point;
import openfl.display.Sprite;

class MoveableSquare extends Sprite implements IMoveableShape {
	var _color:UInt;
	
	public function new() {
		super();
	}

	public function setPosition(position:Point) {
		x = position.x;
		y = position.y;
	}

	public function setColor(color:UInt) {
		_color = color;
	}

	public function draw() {
		graphics.beginFill(_color, 1);
		graphics.drawRect(0, 0, 400, 400);
		graphics.endFill();
	}
}