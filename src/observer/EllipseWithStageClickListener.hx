package observer;

class EllipseWithStageClickListener extends ShapeWithStageClickListener {
	public function new() {
		super();
	}

	override function _draw() {
		graphics.beginFill(_getRandomColor(), 1);
		graphics.drawEllipse(0, 0, 100, 50);
		graphics.endFill();
	}
}