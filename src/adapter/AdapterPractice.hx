package adapter;

import util.PracticeInfoLabel;
import openfl.display.Sprite;

class AdapterPractice extends Sprite {
	public function new() {
		super();
		addChild(new PracticeInfoLabel("Check the console output"));

		var golfGTI = new GermanCar();
		golfGTI.setSpeed(200);
		var fordFocus = new AmericanCar();
		fordFocus.setSpeed(120);
		var fordFocusAdapter = new AmericanCarAdapter(fordFocus);

		trace("A Golf GTI can reach speeds of up to " + golfGTI.getSpeed() + " kmh.");
		trace("A Ford Focus can reach speeds of up to " + fordFocusAdapter.getSpeed() + " kmh.");
	}
}