package builder;

import openfl.display.DisplayObject;
import openfl.display.Sprite;

/**
	The bridge pattern belongs to the creational patterns. Its purpose is to create complex objects by combining different parts,
	resulting in a highly modular approach of construction objects.

	Imagine having a large hierarchy of classes, `Shape`. For every color we can imagine, we not extend this class, so now we have
	`RedShape`, `BlueShape`, `YellowShape`, etc.
	The builder pattern would grant us the ability to construct these shapes in a modular fashion, adding a parameter `color` to a class `Shape`.
	For every parameter of this class, we could now add a subclass where a certain parameter is `true` or `false` or `0xffffff`, but that would
	either lead to huge constructors with lots of parameters, or a large amount of classes.
	Instead, we can let a `ShapeBuilder` take care of it.  It takes care of creating the shape that we want by adding functions like `withColor()`,
	`withSize()`, `withAlpha()` etc. For each common object that we need, we can then add functions like `createBlueSquareWithNoAlpha()`. 

	If we now assume that we can have classes that are very similar to squares, bot not actually squares, then this builder class can be even
	more helpful. Just like a car can have certain parameters like `length`, `speed` or `color`, a class `CarManual` would probably have the same
	parameters and might share the same interface as `Car`, even though they are completely different things.
	The builder would also enable us to easily create `CarManuals` now.
	For this example, we are creating shapes and something called `ShapeDescription`, which has the same parameters as a `Shape`, but we actually
	just print some information about it in the console instead of displaying it.     
**/
class BuilderPractice extends Sprite {
	public function new() {
		super();

		var builder = new ShapeBuilder();
		var shapeDisplayObjectBuilder = new ShapeDisplayObjectBuilder();
		var shapeDescriptionBuilder = new ShapeDescriptionBuilder();

		builder.setBuilder(shapeDisplayObjectBuilder);
		builder.buildLargeBlueCircle();
		_placeRandomly(shapeDisplayObjectBuilder.getDisplayObject());
		shapeDisplayObjectBuilder.reset();

		builder.setBuilder(shapeDisplayObjectBuilder);
		builder.buildLargeBlueRectWithoutText();
		_placeRandomly(shapeDisplayObjectBuilder.getDisplayObject());
		shapeDisplayObjectBuilder.reset();

		builder.setBuilder(shapeDisplayObjectBuilder);
		builder.buildSmallGreenCircle();
		_placeRandomly(shapeDisplayObjectBuilder.getDisplayObject());
		shapeDisplayObjectBuilder.reset();

		builder.setBuilder(shapeDisplayObjectBuilder);
		builder.buildSmallGreenRect();
		_placeRandomly(shapeDisplayObjectBuilder.getDisplayObject());
		shapeDisplayObjectBuilder.reset();

		builder.setBuilder(shapeDisplayObjectBuilder);
		builder.buildLargeGreenSquareWithoutText();
		_placeRandomly(shapeDisplayObjectBuilder.getDisplayObject());
		shapeDisplayObjectBuilder.reset();

		builder.setBuilder(shapeDisplayObjectBuilder);
		builder.buildLargeRedSquare();
		_placeRandomly(shapeDisplayObjectBuilder.getDisplayObject());
		shapeDisplayObjectBuilder.reset();

		builder.setBuilder(shapeDescriptionBuilder);
		builder.buildLargeBlueCircle();
		trace(shapeDescriptionBuilder.getFullDescription().getText());
		shapeDescriptionBuilder.reset();

		builder.setBuilder(shapeDescriptionBuilder);
		builder.buildLargeBlueRectWithoutText();
		trace(shapeDescriptionBuilder.getFullDescription().getText());
		shapeDescriptionBuilder.reset();

		builder.setBuilder(shapeDescriptionBuilder);
		builder.buildLargeGreenSquareWithoutText();
		trace(shapeDescriptionBuilder.getFullDescription().getText());
		shapeDescriptionBuilder.reset();

		builder.setBuilder(shapeDescriptionBuilder);
		builder.buildLargeRedSquare();
		trace(shapeDescriptionBuilder.getFullDescription().getText());
		shapeDescriptionBuilder.reset();

		builder.setBuilder(shapeDescriptionBuilder);
		builder.buildSmallGreenCircle();
		trace(shapeDescriptionBuilder.getFullDescription().getText());
		shapeDescriptionBuilder.reset();

		builder.setBuilder(shapeDescriptionBuilder);
		builder.buildSmallGreenRect();
		trace(shapeDescriptionBuilder.getFullDescription().getText());
		shapeDescriptionBuilder.reset();
	}

	function _placeRandomly(displayObject:DisplayObject) {
		var position = Main.getRandomPosition();
		displayObject.x = position.x;
		displayObject.y = position.y;
		addChild(displayObject);
	}
}