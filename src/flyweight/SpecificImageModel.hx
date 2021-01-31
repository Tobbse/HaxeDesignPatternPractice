package flyweight;

import openfl.display.BitmapData;
import openfl.display.Sprite;

class SpecificImageModel extends Sprite {
    public var bitmapData:BitmapData;
    public var border:Sprite;

	public function new() {
        super();
        bitmapData = new BitmapData(3, 3, false, 0xff0000);

        border = new Sprite();
        border.graphics.beginFill(0xffffff, 1);
        border.graphics.drawRect(-2, -2, bitmapData.width + 4, bitmapData.height + 4);
    }
}
