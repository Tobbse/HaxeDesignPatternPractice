package bridge;

import openfl.display.Sprite;

class BridgePractice extends Sprite {
	public function new() {
		super();

		_addShape(new CircleShape(new BlueShapeColor()));
		_addShape(new CircleShape(new GreenShapeColor()));
		_addShape(new CircleShape(new RedShapeColor()));

		_addShape(new SquareShape(new BlueShapeColor()));
		_addShape(new SquareShape(new GreenShapeColor()));
		_addShape(new SquareShape(new RedShapeColor()));

		_addShape(new EllipseShape(new BlueShapeColor()));
		_addShape(new EllipseShape(new GreenShapeColor()));
		_addShape(new EllipseShape(new RedShapeColor()));

		_addShape(new RectShape(new BlueShapeColor()));
		_addShape(new RectShape(new GreenShapeColor()));
		_addShape(new RectShape(new RedShapeColor()));
	}

	function _addShape(shape:Shape) {
		var position = Main.getRandomPosition();
		shape.x = position.x;
		shape.y = position.y;
		addChild(shape);
	}
}