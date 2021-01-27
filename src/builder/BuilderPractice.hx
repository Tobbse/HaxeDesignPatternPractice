package builder;

import openfl.display.DisplayObject;
import openfl.display.Sprite;

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
		var position = PracticeStage.getRandomPosition();
		displayObject.x = position.x;
		displayObject.y = position.y;
		addChild(displayObject);
	}
}