package builder;

class ShapeDescription {
	var _sizeText:String;
	var _colorText:String;
	var _shapeText:String;
	var _description:String;

	public function new() {}

	public function setSizeText(text:String) {
		_sizeText = text;
	}

	public function setColorText(text:String) {
		_colorText = text;
	}

	public function setShape(shape:ShapeType) {
		_shapeText = switch (shape) {
			case Circle: "circle.";
			case Square: "square.";
			case Rect: "rectangle.";
		};
	}

	public function setDescription(text:String) {
		_description = text;
	}

	public function getText() {
		var text:String;

		if (_description == null) {
			text = "shape: " + _shapeText + " ";
			text += "size: " + _sizeText + " ";
			text += "color: " + _colorText;
		} else {
			text = "This will give you infos about a " + _shapeText + "\n";
			text += _description + "\n";
			text += "The size of the " + _shapeText + " is: " + _sizeText + "\n";
			text += "Its color is " + _colorText;
		}
		return text;
	}
}