package flyweight;

import openfl.display.DisplayObjectContainer;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

class SpecificImage extends DisplayObjectContainer {
    // Let's pretend it would make sense to store those in here, because... of some reason.
    var _sizeX:Float;
    var _sizeY:Float;
    var _color:UInt;
    var _alpha:Float;
    var _bitmapData:BitmapData;

	public function new(sizeX:Float, sizeY:Float, color:UInt, alpha:Float) {
        super();
        _sizeX = sizeX;
        _sizeY = sizeY;
        _color = color;
        _alpha = alpha;

        _bitmapData = new BitmapData(Std.int(_sizeX), Std.int(_sizeY), false, _color);
    }

    public function draw() {
        this.alpha = _alpha;
        addChild(new Bitmap(_bitmapData));
    }
}
