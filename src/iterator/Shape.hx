package iterator;

import openfl.geom.Point;
import openfl.display.Sprite;

class Shape extends Sprite {
    var _color:UInt;
    var _size:Point;

    public function new(color:UInt, size:Point) {
        super();
        _color = color;
        _size = size;
        _drawShape();
    }

    public function getSize():Point {
        return _size;
    }

    public function getColor():UInt {
        return _color;
    }

    function _drawShape() {}
}
