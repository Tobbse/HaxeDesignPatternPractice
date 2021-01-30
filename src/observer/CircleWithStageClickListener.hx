package observer;

class CircleWithStageClickListener extends ShapeWithStageClickListener {
	public function new() {
		super();
	}

	override function _draw() {
		graphics.beginFill(_getRandomColor(), 1);
		graphics.drawCircle(0, 0, 50);
		graphics.endFill();
	}
}