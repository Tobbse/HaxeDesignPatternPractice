package iterator;

import openfl.geom.Point;

class CircleShape extends Shape {
    public function new(color:UInt, size:Point) {
        super(color, size);
    }

    override function _drawShape() {
        graphics.beginFill(_color, 1);
        graphics.drawCircle(0, 0, Math.max(_size.x, _size.y));
        graphics.endFill();
    }
}
