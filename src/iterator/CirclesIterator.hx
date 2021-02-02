package iterator;

import openfl.geom.Point;

class CirclesIterator implements IShapeIterator {
    var _type:String;
    var _circles:Array<CircleShape>;
    var _position:Int = 0;

    public function new(groupOfCircles:GroupOfCircles, type:String) {
        _circles = [];

        for (circle in groupOfCircles.getCircles()) {
            switch (type) {
                case "large": if (_isLarge(circle.getSize())) _circles.push(circle);
                case "small": if (_isSmall(circle.getSize())) _circles.push(circle);
                case "red": if (circle.getColor() == 0xff0000) _circles.push(circle);
                case "green": if (circle.getColor() == 0xff0000) _circles.push(circle);
                case "blue": if (circle.getColor() == 0x00ff00) _circles.push(circle);
                case "all": _circles.push(circle);
            }
        }
    }

    public function getNext():CircleShape {
        if (!hasMore()) return null;
        _position++;
        return _circles[_position - 1];
    }

    public function hasMore():Bool {
        return _circles.length - 1 > _position;
    }

    public function reset() {
        _position = 0;
    }

    function _isLarge(size:Point) {
        return size.x >= 100 || size.y >= 100;
    }

    function _isSmall(size:Point) {
        return !_isLarge(size);
    }
}
