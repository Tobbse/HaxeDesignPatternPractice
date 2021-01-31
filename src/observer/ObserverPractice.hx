package observer;

import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.display.Sprite;

class ObserverPractice extends Sprite {
	public function new() {
		super();

		addChild(new CircleWithStageClickListener());
		addChild(new SquareWithStageClickListener());
		addChild(new EllipseWithStageClickListener());

		PracticeStage.getInstance().addEventListener(MouseEvent.CLICK, _onStageClicked);
		addEventListener(Event.REMOVED_FROM_STAGE, _onRemovedFromStage);
	}

	function _onRemovedFromStage(event:Event) {
		PracticeStage.getInstance().removeEventListener(MouseEvent.CLICK, _onStageClicked);
		removeEventListener(Event.REMOVED_FROM_STAGE, _onRemovedFromStage);
		PracticeStage.kill();
	}

	function _onStageClicked(event:MouseEvent) {
		trace("Clicked observer container.");
		EventManager.getInstance().notify(StageClickListener.TYPE);
	}

	function _positionRandomly(shape:ShapeWithStageClickListener) {
		var position = PracticeStage.getRandomPosition();
		shape.x = position.x;
		shape.y = position.y;
		addChild(shape);
	}
}