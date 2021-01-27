package builder;

class ShapeBuilder {
	static inline var LARGE_X = 80;
	static inline var LARGE_Y = 40;
	static inline var SMALL_X = 30;
	static inline var SMALL_Y = 15;

	var _builder:IShapeBuilder;

	public function new() {}

	public function setBuilder(builder:IShapeBuilder) {
		_builder = builder;
	}

	public function buildLargeRedSquare() {
		_builder.setSize(LARGE_X, LARGE_Y);
		_builder.setColor(0xff0000);
		_builder.setShape(Square);
		_builder.setText("This is a large red square!");
	}

	public function buildSmallGreenRect() {
		_builder.setSize(SMALL_X, SMALL_Y);
		_builder.setColor(0x00ff00);
		_builder.setShape(Rect);
		_builder.setText("This is a small green rect!");
	}

	public function buildLargeBlueCircle() {
		_builder.setSize(LARGE_X, LARGE_Y);
		_builder.setColor(0x0000ff);
		_builder.setShape(Circle);
		_builder.setText("This is a large blue circle!");
	}

	public function buildSmallGreenCircle() {
		_builder.setSize(SMALL_X, SMALL_Y);
		_builder.setColor(0x00ff00);
		_builder.setShape(Circle);
		_builder.setText("This is a small green circle!");
	}

	public function buildLargeBlueRectWithoutText() {
		_builder.setSize(LARGE_X, LARGE_Y);
		_builder.setColor(0x0000ff);
		_builder.setShape(Rect);
		_builder.setText(null);
	}

	public function buildLargeGreenSquareWithoutText() {
		_builder.setSize(LARGE_X, LARGE_Y);
		_builder.setColor(0x00ff00);
		_builder.setShape(Square);
		_builder.setText(null);
	}
}
