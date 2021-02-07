package bridge;

import openfl.display.Sprite;

/**
	The bridge pattern is a structural pattern often used when having a large set of classes in an interitance hierarchy,
	or one giant class that should be split up.
	It is split into two seperate hierarchies in order to seperate abstraction and implementation.

	In this example, we assume that there is a class `Shape` that should be split up. `Shape` handles not only
	the geometry of the object, but also its color. Let's just assume that coloring it is a complicated process that we
	want to implement inside its own implementation layer. This layer now contains a set of classes like `BlueShapeColor`
	or `GreenShapeColor`. It is passed to `Shape`, and the actual coloring happens inside them (in this case we actually
	don't do any complicated stuff in those color classes but just return a color instead, but you get the idea).

	Now, we can also split `Shape` into its own hierarchy, so that we have `CircleShape` or `SquareShape`. 
	Each of these classes will work with any kind of color. Not only can we seperate the different relations of the
	original class, we can also seperate abstraction from implementation (which is a bit lacking in this example), and
	we can also easily combine any shape and color now, creating a more composition-based approach.
**/
class BridgePractice extends Sprite {
	public function new() {
		super();

		_addShape(new CircleShape(new BlueShapeColor()));
		_addShape(new CircleShape(new GreenShapeColor()));
		_addShape(new CircleShape(new RedShapeColor()));

		_addShape(new SquareShape(new BlueShapeColor()));
		_addShape(new SquareShape(new GreenShapeColor()));
		_addShape(new SquareShape(new RedShapeColor()));

		_addShape(new EllipseShape(new BlueShapeColor()));
		_addShape(new EllipseShape(new GreenShapeColor()));
		_addShape(new EllipseShape(new RedShapeColor()));

		_addShape(new RectShape(new BlueShapeColor()));
		_addShape(new RectShape(new GreenShapeColor()));
		_addShape(new RectShape(new RedShapeColor()));
	}

	function _addShape(shape:Shape) {
		var position = Main.getRandomPosition();
		shape.x = position.x;
		shape.y = position.y;
		addChild(shape);
	}
}