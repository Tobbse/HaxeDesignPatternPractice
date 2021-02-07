package visitor;

interface ShapeVisitor {
	public function visitSquare(square:RectangleWithVisitor):Void;
	public function visitEllipse(ellipse:EllipseWithVisitor):Void;
	public function visitCircle(circle:CircleWithVisitor):Void;
}