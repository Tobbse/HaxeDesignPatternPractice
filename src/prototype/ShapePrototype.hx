package prototype;

import openfl.geom.Point;
import openfl.display.Sprite;

class ShapePrototype extends Sprite {
    var _color:UInt;
    var _size:Point;

	public function new(color:UInt, size:Point) {
        super();
        _color = color;
        _size = size;
    }

    public function getColor():UInt {
        return _color;
    }

    public function getSize():Point {
        return _size;
    }

    // TODO: Investigate why I can't use abstracts.
    public function clone():ShapePrototype {
        trace ("dont call this function!!");
        return null;
    };

    public function draw() {}

    /*abstract public function clone():ShapePrototype;
    abstract public function draw() {};*/
}
