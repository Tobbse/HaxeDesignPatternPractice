package flyweight;

import openfl.display.BitmapData;

class SpecificImageModel {
    public final sizeX:Float;
    public final sizeY:Float;
    public final color:UInt;
    public final alpha:Float;
    public final bitmapData:BitmapData;

	public function new(sizeX:Float, sizeY:Float, color:UInt, alpha:Float) {
        this.sizeX = sizeX;
        this.sizeY = sizeY;
        this.color = color;
        this.alpha = alpha;

        bitmapData = new BitmapData(Std.int(this.sizeX), Std.int(this.sizeY), false, this.color);
    }
}
