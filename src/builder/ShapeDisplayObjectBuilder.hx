package builder;

import openfl.text.TextField;
import openfl.geom.Point;
import openfl.display.Sprite;
import openfl.display.DisplayObject;

class ShapeDisplayObjectBuilder implements IShapeBuilder {
	var _shape:Sprite;
	var _size:Point;

	public function new() {
		reset();
	}

	public function setSize(width:Float, height:Float) {
		_size = new Point(width, height);
	}

	public function setColor(color:UInt) {
		_shape.graphics.beginFill(color, 1);
	}

	public function setShape(shape:ShapeType) {
		switch (shape) {
			case Circle:
				_shape.graphics.drawCircle(0, 0, Math.max(_size.x, _size.y));
				
			case Square:
				var size = Math.max(_size.x, _size.y);
				_shape.graphics.drawRect(0, 0, size, size);
					
			case Rect:
				_shape.graphics.drawRect(0, 0, _size.x, _size.y);
		}
		_shape.graphics.endFill();
	}

	public function setText(text:Null<String>) {
		if (text == null) return;
		var label = new TextField();
		label.width = 150;
		label.height = 100;
		label.x = (_shape.width - label.width) / 2;
		label.y = (_shape.height - label.height) / 2;
		label.text = text;
		_shape.addChild(label);
	}

	public function getShape():DisplayObject {
		return _shape;
	}

	public function reset() {
		_shape = new Sprite();
		_size = null;
	}

	public function getDisplayObject() {
		return _shape;
	}
}