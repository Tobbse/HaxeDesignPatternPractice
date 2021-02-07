package visitor;

import openfl.geom.Point;

class CircleWithVisitor extends ShapeWithVisitor implements IShapeWithVisitor {
	public function new(size:Point) {
		super(size);
	}

	override public function acceptVisitor(visitor:ShapeVisitor) {
		visitor.visitCircle(this);
	}

	override function _draw() {
		graphics.beginFill(0xff0000, 1);
		graphics.drawCircle(size.x / 2, size.y / 2, Math.max(size.x, size.y));
		graphics.endFill();
	}
}