package visitor;

import openfl.text.TextField;

class ShapeSizeLabelVisitor implements ShapeVisitor {
	public function new() {}

	public function visitSquare(rectangle:RectangleWithVisitor) {
		var size = rectangle.size.x * rectangle.size.y;
		_addLabel(size, rectangle);
	}

	public function visitEllipse(ellipse:EllipseWithVisitor) {
		var size = ellipse.size.x / 2 * ellipse.size.y / 2 * Math.PI;
		_addLabel(size, ellipse);
	}
	
	public function visitCircle(circle:CircleWithVisitor) {
		var size = Math.PI * Math.pow(Math.max(circle.size.x, circle.size.y), 2);
		_addLabel(size, circle);
	}

	function _addLabel(size:Float, shape:ShapeWithVisitor) {
		var label = new TextField();
		label.width = 150;
		label.height = 100;
		label.x = (shape.width - label.width) / 2;
		label.y = (shape.height - label.height) / 2;
		label.text = "Size: " + Std.int(size);
		shape.addChild(label);
	}
}