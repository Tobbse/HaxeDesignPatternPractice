package composite;

import openfl.geom.Point;

class MoveableShapeComposite implements IMoveableShape {
	var _children:Array<IMoveableShape> = [];

	public function new() {}

	public function addMoveableShape(moveableShape:IMoveableShape) {
		_children.push(moveableShape);
	}

	public function setPosition(position:Point) {
		for (child in _children) {
			child.setPosition(position);
		}
	}

	public function setColor(color:UInt) {
		for (child in _children) {
			child.setColor(color);
		}
	}

	public function draw() {
		for (child in _children) {
			child.draw();
		}
	}
}