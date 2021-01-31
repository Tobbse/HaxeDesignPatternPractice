package flyweight;

import openfl.display.DisplayObjectContainer;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

class SpecificImage extends DisplayObjectContainer {
    var _bitmapData:BitmapData;
    var _border:Sprite;

	public function new() {
        super();
        _bitmapData = new BitmapData(3, 3, false, 0xff0000);

        _border = new Sprite();
        _border.graphics.beginFill(0xffffff, 1);
        _border.graphics.drawRect(-2, -2, _bitmapData.width + 4, _bitmapData.height + 4);
    }

    public function draw() {
        addChild(_border);
        addChild(new Bitmap(_bitmapData));
    }
}
