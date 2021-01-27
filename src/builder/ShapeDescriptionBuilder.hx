package builder;

class ShapeDescriptionBuilder implements IShapeBuilder {
	var _shapeDescription:ShapeDescription;

	public function new() {
		reset();
	}

	public function setSize(width:Float, height:Float) {
		_shapeDescription.setSizeText(width + " pixels of width and " + height + " pixels of height.");
	}

	public function setColor(color:UInt) {
		_shapeDescription.setColorText(Std.string(color));
	}

	public function setShape(shape:ShapeType) {
		_shapeDescription.setShape(shape);
	}

	public function setText(text:String) {
		_shapeDescription.setDescription(text);
	}

	public function reset() {
		_shapeDescription = new ShapeDescription();
	}

	public function getFullDescription() {
		return _shapeDescription;
	}
}