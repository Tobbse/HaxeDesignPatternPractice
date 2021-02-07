package composite;

import openfl.geom.Point;
import openfl.display.Sprite;

/**
	Composite is a structural design pattern, which allows us to add several objects
	into some kind of structure, and then working with the structure instead of having
	to work with each individual object. We therefore hide the iteration over these collection
	inside of the composite.
	
	In this object, we create shapes that change their positions `MoveableShapes`.
	Intuitively, you might create an array for this and then iterate over each shape.
	Instead, we have several classes like `MoveableEllipse` or `MoveableSquare`, that
	the `MoveableShapeComposite` contains. The composite extends the same interface,
	`IMoveableShape`. Its elements can be used 
	By implementing the functions required by the interface for the composite, we can delegate
	how we want to work on the structure, for example an array of moveable shapes, to the composite.

	The composite could also contain multiple other composites which in turn could have more composite,
	enabling us to create more complex structures with a simple interface for working with the whole collection.
**/
class CompositePractice extends Sprite {
	public function new() {
		super();

		var square = new MoveableSquare();
		var ellipse = new MoveableEllipse();
		var circle = new MoveableCircle();

		addChild(square);
		addChild(ellipse);
		addChild(circle);

		var composite = new MoveableShapeComposite();
		composite.addMoveableShape(square);
		composite.addMoveableShape(ellipse);
		composite.addMoveableShape(circle);

		composite.setColor(0xff0000);
		composite.setPosition(new Point(500, 500));
		composite.draw();
	}
}