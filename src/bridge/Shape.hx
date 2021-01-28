package bridge;

import openfl.display.Sprite;

class Shape extends Sprite {
    var _shapeColor:IShapeColor;

    public function new(shapeColor:IShapeColor) {
        super();
        _shapeColor = shapeColor;
        _drawShape();
    }

    function _drawShape() {}
}