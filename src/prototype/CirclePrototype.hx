package prototype;

import openfl.geom.Point;

class CirclePrototype extends ShapePrototype {
	public function new(color:UInt, size:Point) {
        super(color, size);
    }

    override public function clone():ShapePrototype {
        return new CirclePrototype(_color, _size);
    }

    override public function draw() {
        graphics.beginFill(_color, 1);
        graphics.drawCircle(0, 0, Math.max(_size.x, _size.y));
        graphics.endFill();
    }
}
