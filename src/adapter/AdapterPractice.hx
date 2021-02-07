package adapter;

import util.PracticeInfoLabel;
import openfl.display.Sprite;

/**
	An structural adapter pattern combines two types of concepts that are not directly compatible, in order to achieve compatibility.
	It does so by extending one of the existing classes while containing an instance of the other object.
	Calls to this instance are then handled by the adapter, where the necessary "translation" is happening.

	In this case, American and German cars are used, both having a certain speed while one is using the imperial and the other the metric system.
	The adapter AmericanToGermanCarAdapter simply translates this speed from miles into kilometers.
**/
class AdapterPractice extends Sprite {
	public function new() {
		super();
		addChild(new PracticeInfoLabel("Check the console output"));

		var golfGTI = new GermanCar();
		golfGTI.setSpeed(200);
		var fordFocus = new AmericanCar();
		fordFocus.setSpeed(120);
		var fordFocusAdapter = new AmericanToGermanCarAdapter(fordFocus);

		trace("A Golf GTI can reach speeds of up to " + golfGTI.getSpeed() + " kmh.");
		trace("A Ford Focus can reach speeds of up to " + fordFocusAdapter.getSpeed() + " kmh.");
	}
}