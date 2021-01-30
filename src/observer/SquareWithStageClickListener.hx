package observer;

class SquareWithStageClickListener extends ShapeWithStageClickListener {
	public function new() {
		super();
	}

	override function _draw() {
		graphics.beginFill(_getRandomColor(), 1);
		graphics.drawRect(0, 0, 50, 150);
		graphics.endFill();
	}
}