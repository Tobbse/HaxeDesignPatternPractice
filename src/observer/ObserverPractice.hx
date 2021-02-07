package observer;

import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.display.Sprite;

/**
	The behavioral pattern observer creates a subscription mechanic. Objects that
	are interested in some kind of event can subscribe to an EventManager in order
	to be notified when this event happens.
	In this case, some shape ojects are interested in getting notified whenever
	the stage is clicked, and as a reaction change their color.
**/
class ObserverPractice extends Sprite {
	public function new() {
		super();

		addChild(new CircleWithStageClickListener());
		addChild(new SquareWithStageClickListener());
		addChild(new EllipseWithStageClickListener());

		Main.getInstance().addEventListener(MouseEvent.CLICK, _onStageClicked);
		addEventListener(Event.REMOVED_FROM_STAGE, _onRemovedFromStage);
	}

	function _onRemovedFromStage(event:Event) {
		Main.getInstance().removeEventListener(MouseEvent.CLICK, _onStageClicked);
		removeEventListener(Event.REMOVED_FROM_STAGE, _onRemovedFromStage);
		Main.kill();
	}

	function _onStageClicked(event:MouseEvent) {
		trace("Clicked observer container.");
		EventManager.getInstance().notify(StageClickListener.TYPE);
	}

	function _positionRandomly(shape:ShapeWithStageClickListener) {
		var position = Main.getRandomPosition();
		shape.x = position.x;
		shape.y = position.y;
		addChild(shape);
	}
}