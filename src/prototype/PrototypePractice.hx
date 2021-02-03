package prototype;

import openfl.geom.Point;
import openfl.display.Sprite;

class PrototypePractice extends Sprite {
	public function new() {
        super();

        _addMultipleShapes(new CirclePrototype(0xff0000, new Point(100, 100)), 5);
        _addMultipleShapes(new RectanglePrototype(0xff0000, new Point(50, 100)), 5);
    }

    function _addMultipleShapes(shape:ShapePrototype, amount:Int) {
        shape.draw();

        for (i in 0...amount) {
            var position = PracticeStage.getRandomPosition();
            var copy = shape.clone();
            copy.x = position.x;
            copy.y = position.y;
            copy.draw();
            addChild(copy);
        }
    }
}
