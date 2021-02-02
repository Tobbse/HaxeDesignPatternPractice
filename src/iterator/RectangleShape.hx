package iterator;

import openfl.geom.Point;

class RectangleShape extends Shape {
    public function new(color:UInt, size:Point) {
        super(color, size);
    }

    override function _drawShape() {
        graphics.beginFill(_color, 1);
        graphics.drawRect(0, 0, _size.x, _size.y);
        graphics.endFill();
    }
}
