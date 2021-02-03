package memento;

import openfl.geom.Point;
import openfl.display.Sprite;

class MemoryShape extends Sprite {
	var _color:UInt;
	var _alpha:Float;
	var _size:Point;
	var _shapeType:String;

	public function new() {
		super();
	}

	public function createSnapshot():ShapeSnapshot {
		return new ShapeSnapshot(_color, _alpha, _size, x, y, _shapeType);
	}

	public function restoreSnapshot(snapshot:ShapeSnapshot) {
		setDataAndDraw(snapshot.color, snapshot.alpha, snapshot.size, snapshot.x, snapshot.y, snapshot.shapeType);
	}

	public function setDataAndDraw(color:UInt, alpha:Float, size:Point, x:Float, y:Float, shapeType:String) {
		_color = color;
		_alpha = alpha;
		_size = size;
		this.x = x;
		this.y = y;
		_shapeType = shapeType;

		_draw();
	}

	public function _draw() {
		graphics.clear();
		graphics.beginFill(_color, _alpha);

		switch (_shapeType) {
			case "circle": graphics.drawCircle(0, 0, Math.max(_size.x, _size.y)); 
			case "rect": graphics.drawRect(0, 0, _size.x, _size.y); 
			case "ellipse": graphics.drawEllipse(0, 0, _size.x, _size.y); 
			case "square": graphics.drawRect(0, 0, Math.max(_size.x, _size.y), Math.max(_size.x, _size.y)); 
		}
		graphics.endFill();
	}
}