package visitor;

import openfl.geom.Point;

class EllipseWithVisitor extends ShapeWithVisitor implements IShapeWithVisitor {
	public function new(size:Point) {
		super(size);
	}

	override public function acceptVisitor(visitor:ShapeVisitor) {
		visitor.visitEllipse(this);
	}

	override function _draw() {
		graphics.beginFill(0xff0000, 1);
		graphics.drawEllipse(0, 0, size.x, size.y);
		graphics.endFill();
	}
}