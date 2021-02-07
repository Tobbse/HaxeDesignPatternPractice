package memento;

import openfl.geom.Point;
import util.SquareButton;
import openfl.display.Sprite;

/**
	The memento pattern is used in order to preserve a state of an object,
	and restore it if needed. It is a behavioral pattern.
	In this case, some state of a shape is stored as a snapshot and later
	restored on a button press.
**/
class MementoPractice extends Sprite {
	final _numShapes = 50;
	final _shapes:Array<{memento:ShapeSnapshot, shape:MemoryShape}> = [];
	final _shapeRandomizer:MemoryShapeRandomizer = new MemoryShapeRandomizer();

	public function new() {
		super();

		_createShapes();

		var changeShapeButton = new SquareButton(75, 50);
		changeShapeButton.x = 900;
		changeShapeButton.y = 10;
		changeShapeButton.setText("Randomize Shapes");
		changeShapeButton.addClickCallback(() -> _randomizeShapes());
		addChild(changeShapeButton);

		var restoreShapesButton = new SquareButton(75, 50);
		restoreShapesButton.x = 1000;
		restoreShapesButton.y = 10;
		restoreShapesButton.setText("Restore Shapes");
		restoreShapesButton.addClickCallback(() -> _restoreShapes());
		addChild(restoreShapesButton);

		var saveShapesButton = new SquareButton(75, 50);
		saveShapesButton.x = 1100;
		saveShapesButton.y = 10;
		saveShapesButton.setText("Save Shapes");
		saveShapesButton.addClickCallback(() -> _saveShapes());
		addChild(saveShapesButton);
	}

	function _createShapes() {
		for (i in 0..._numShapes) {
			var shape = new MemoryShape();
			_shapeRandomizer.randomizeMemoryShape(shape);
			var memento = shape.createSnapshot();

			_shapes.push({memento: memento, shape: shape});
			addChild(shape);
		}
	}

	function _randomizeShapes() {
		for (mementoAndShape in _shapes) {
			_shapeRandomizer.randomizeMemoryShape(mementoAndShape.shape);
		}
	}

	function _restoreShapes() {
		for (mementoAndShape in _shapes) {
			mementoAndShape.shape.restoreSnapshot(mementoAndShape.memento);
		}
	}

	function _saveShapes() {
		for (mementoAndShape in _shapes) {
			mementoAndShape.memento = mementoAndShape.shape.createSnapshot();
		}
	}
}

class MemoryShapeRandomizer {
	static inline final _maxSize = 100;
	static final _shapeTypes = [
		"ellipse",
		"square",
		"rect",
		"circle"
	];

	public function new() {}

	public function randomizeMemoryShape(memoryShape:MemoryShape) {
		var color = Std.int(Math.random() * 0xffffff);
		var alpha = Math.random();
		var size = new Point(Math.random() * _maxSize, Math.random() * _maxSize);
		var position = Main.getRandomPosition();

		memoryShape.setDataAndDraw(color, alpha, size, position.x, position.y, _getRandomShapeType());
	}

	function _getRandomShapeType():String {
		var index = Std.int(Math.random() * _shapeTypes.length);
		return _shapeTypes[index];
	}
}