package composite;

import openfl.geom.Point;
import openfl.display.Sprite;

class MoveableCircle extends Sprite implements IMoveableShape {
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
		graphics.drawCircle(0, 0, 100);
		graphics.endFill();
	}
}