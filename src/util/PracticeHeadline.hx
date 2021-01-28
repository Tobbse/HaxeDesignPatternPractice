package util;

import openfl.text.TextField;
import openfl.display.Sprite;

class PracticeHeadline extends Sprite {
    public function new(text:String) {
		super();
		_addLabel(text);
		x = 300;
		y = 10;
	}

	public function _addLabel(text:String) {
		var label = new TextField();
		label.width = 300;
		label.height = 200;
		label.text = text;
		label.getTextFormat().bold = true;
		addChild(label);
	}
}