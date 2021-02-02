package iterator;

import openfl.geom.Point;

class GroupOfCircles implements IGroupOfShapes {
    var _circles:Array<CircleShape>;

    public function new(circles:Array<CircleShape>) {
        _circles = circles;
    }

    public static function createRandomGroupOfCircles() {
        return new GroupOfCircles(
            [
                new CircleShape(0xff0000, new Point(100, 100)),
                new CircleShape(0x00ff00, new Point(125, 125)),
                new CircleShape(0x0000ff, new Point(150, 150)),
                new CircleShape(0xff0000, new Point(10, 10)),
                new CircleShape(0x00ff00, new Point(20, 20)),
                new CircleShape(0x0000ff, new Point(30, 30)),
                new CircleShape(0x00ff00, new Point(100, 100)),
                new CircleShape(0x0000ff, new Point(125, 125)),
                new CircleShape(0xff0000, new Point(150, 150)),
                new CircleShape(0x00ff00, new Point(10, 10)),
                new CircleShape(0x0000ff, new Point(20, 20)),
                new CircleShape(0xff0000, new Point(30, 30)),
                new CircleShape(0x0000ff, new Point(100, 100)),
                new CircleShape(0xff0000, new Point(125, 125)),
                new CircleShape(0x00ff00, new Point(150, 150)),
                new CircleShape(0x0000ff, new Point(10, 10)),
                new CircleShape(0xff0000, new Point(20, 20)),
                new CircleShape(0x00ff00, new Point(30, 30))
            ]
        );
    }

    public function createLargeShapesIterator():IShapeIterator {
        return new CirclesIterator(this, "large");
    }

    public function createSmallShapesIterator():IShapeIterator {
        return new CirclesIterator(this, "small");
    }

    public function createRedShapesIterator():IShapeIterator {
        return new CirclesIterator(this, "red");
    }

    public function createGreenShapesIterator():IShapeIterator {
        return new CirclesIterator(this, "green");
    }

    public function createBlueShapesIterator():IShapeIterator {
        return new CirclesIterator(this, "blue");
    }

    public function createAllShapesIterator():IShapeIterator {
        return new CirclesIterator(this, "all");
    }

    public function getCircles():Array<CircleShape> {
        return _circles;
    }
}
