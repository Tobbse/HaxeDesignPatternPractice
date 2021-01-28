package util;

import openfl.text.TextField;
import openfl.display.Sprite;
import openfl.events.MouseEvent;

class SquareButton extends Sprite {
    public function new(width:Int, height:Int) {
		super();
		mouseChildren = true;
		mouseEnabled = true;
		graphics.beginFill(0xFFFFFF, 1);
        graphics.drawRect(0, 0, width, height);
        graphics.endFill();
	}

	public function setText(text:String) {
		var label = new TextField();
		label.text = text;
		label.width = width;
		label.height = height;
		label.multiline = true;
		label.wordWrap = true;
		label.getTextFormat().align = CENTER;
		addChild(label);
	}
	
	public function addClickCallback(callback:(Void->Void)) {
		addEventListener(
			MouseEvent.CLICK,
			function(_:MouseEvent) {
				callback();
			}
		);
	}
}