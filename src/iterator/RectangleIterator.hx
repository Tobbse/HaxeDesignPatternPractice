package iterator;

import openfl.geom.Point;

class RectangleIterator implements IShapeIterator {
    var _type:String;
    var _rectangles:Array<RectangleShape>;
    var _position:Int = 0;

    public function new(groupOfRects:GroupOfRectangles, type:String) {
        _rectangles = [];
        var isLarge = type == "large";

        for (rect in groupOfRects.getRectangles()) {
            switch (type) {
                case "large": if (_isLarge(rect.getSize())) _rectangles.push(rect);
                case "small": if (_isSmall(rect.getSize())) _rectangles.push(rect);
                case "red": if (rect.getColor() == 0xff0000) _rectangles.push(rect);
                case "green": if (rect.getColor() == 0xff0000) _rectangles.push(rect);
                case "blue": if (rect.getColor() == 0x00ff00) _rectangles.push(rect);
                case "all": _rectangles.push(rect);
            }
        }
    }

    public function getNext():RectangleShape {
        if (!hasMore()) return null;
        _position++;
        return _rectangles[_position - 1];
    }

    public function hasMore():Bool {
        return _rectangles.length - 1 > _position;
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
