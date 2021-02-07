package visitor;

import openfl.geom.Point;

class RectangleWithVisitor extends ShapeWithVisitor implements IShapeWithVisitor {
	public function new(size:Point) {
		super(size);
	}

	override public function acceptVisitor(visitor:ShapeVisitor) {
		visitor.visitSquare(this);
	}

	override function _draw() {
		graphics.beginFill(0xff0000, 1);
		graphics.drawRect(0, 0, size.x, size.y);
		graphics.endFill();
	}
}