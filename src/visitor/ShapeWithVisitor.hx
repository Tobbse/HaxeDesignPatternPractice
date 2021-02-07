package visitor;

import openfl.geom.Point;
import openfl.display.Sprite;

class ShapeWithVisitor extends Sprite {
	public final size:Point;

	public function new(size:Point) {
		super();
		this.size = size;
		_draw();
	}

	public function acceptVisitor(visitor:ShapeVisitor) {
		// Extend in subclasses. Abstract classes would be nice.
	}

	function _draw() {}
}