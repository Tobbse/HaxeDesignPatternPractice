package visitor;

import openfl.geom.Point;
import openfl.display.Sprite;

/**
	The visitor belongs to the behavioral patterns and lets you remove certain
	functions or algorithms from inside a class hierarchy into specific visitor
	classes, that contain all the implementations for the algorithms of all the
	affected objects.
	In this example, an amount of shapes is created that accept a visitor. A
	visitor is added that adds a label to those shapes that displays the size
	of the shape.
	The visitor itself contains the adding of the label and the calculation of
	the area of the shape, instead of putting it into the classes themselves.
	The base visitor could now be easily extended to have a large amount of
	algorithms operating on these shapes, while strictly splitting their implementation
	from the actual shapes.
	It is therefore useful when a certain operation should be executed on all elements
	of a structure of objects. It helps achieving the Open/Closed principle by being
	able to add or remove these behaviors easily. It also helps with the Single
	Responsiblity.

	Visitor is a sort of command, and can also be combined with composite, in order to
	have commands running on complexe structures of objects.
**/
class VisitorPractice extends Sprite {
	final _shapeSize:Point;

	public function new() {
		super();

		_shapeSize = new Point(200, 200);
		
		var sizeLabelShapeVisitor = new ShapeSizeLabelVisitor();
		var shapes = [
			_createShape(CircleWithVisitor),
			_createShape(RectangleWithVisitor),
			_createShape(EllipseWithVisitor)
		];

		for (shape in shapes) {
			shape.acceptVisitor(sizeLabelShapeVisitor);
		}
	}

	function _createShape(shapeClass:Class<ShapeWithVisitor>):ShapeWithVisitor {
		var position = Main.getRandomPosition();
		var shape = Type.createInstance(shapeClass, [_shapeSize]);

		shape.x = position.x;
		shape.y = position.y;
		addChild(shape);

		return shape;
	}
}