package prototype;

import openfl.geom.Point;

class RectanglePrototype extends ShapePrototype {
	public function new(color:UInt, size:Point) {
        super(color, size);
    }

    override public function clone():ShapePrototype {
        return new RectanglePrototype(_color, _size);
    }

    override public function draw() {
        graphics.beginFill(_color, 1);
        graphics.drawRect(0, 0, _size.x, _size.y);
        graphics.endFill();
    }
}
