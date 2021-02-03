package observer;

import openfl.display.Sprite;

class ShapeWithStageClickListener extends Sprite {
	var _listener:IEventListener;

	public function new() {
		super();
		_draw();
		_positionRandomly();

		addStageClickListener();
	}

	public function addStageClickListener() {
		if (_listener != null) return;
		_listener = new StageClickListener();
		_listener.update = _onStageClicked;

		EventManager.getInstance().subscribe(_listener);
	}

	public function removeStageClickListener() {
		_listener = null;
	}

	function _onStageClicked() {
		this.graphics.clear();
		_draw();
	}

	function _draw() {}

	function _getRandomColor():UInt {
		return Std.int(Math.random() * 0xffffff);
	}

	function _positionRandomly() {
		var position = Main.getRandomPosition();
		x = position.x;
		y = position.y;
	}
}