package iterator;

import openfl.geom.Point;

class GroupOfRectangles implements IGroupOfShapes {
    var _rectangles:Array<RectangleShape>;

    public function new(rectangles:Array<RectangleShape>) {
        _rectangles = rectangles;
    }

    public static function createRandomGroupOfRectangles() {
        return new GroupOfRectangles(
            [
                new RectangleShape(0xff0000, new Point(100, 100)),
                new RectangleShape(0x00ff00, new Point(125, 125)),
                new RectangleShape(0x0000ff, new Point(150, 150)),
                new RectangleShape(0xff0000, new Point(10, 10)),
                new RectangleShape(0x00ff00, new Point(20, 20)),
                new RectangleShape(0x0000ff, new Point(30, 30)),
                new RectangleShape(0x00ff00, new Point(100, 100)),
                new RectangleShape(0x0000ff, new Point(125, 125)),
                new RectangleShape(0xff0000, new Point(150, 150)),
                new RectangleShape(0x00ff00, new Point(10, 10)),
                new RectangleShape(0x0000ff, new Point(20, 20)),
                new RectangleShape(0xff0000, new Point(30, 30)),
                new RectangleShape(0x0000ff, new Point(100, 100)),
                new RectangleShape(0xff0000, new Point(125, 125)),
                new RectangleShape(0x00ff00, new Point(150, 150)),
                new RectangleShape(0x0000ff, new Point(10, 10)),
                new RectangleShape(0xff0000, new Point(20, 20)),
                new RectangleShape(0x00ff00, new Point(30, 30))
            ]
        );
    }

    public function createLargeShapesIterator():IShapeIterator {
        return new RectangleIterator(this, "large");
    }

    public function createSmallShapesIterator():IShapeIterator {
        return new RectangleIterator(this, "small");
    }

    public function createRedShapesIterator():IShapeIterator {
        return new RectangleIterator(this, "red");
    }

    public function createGreenShapesIterator():IShapeIterator {
        return new RectangleIterator(this, "green");
    }

    public function createBlueShapesIterator():IShapeIterator {
        return new RectangleIterator(this, "blue");
    }

    public function createAllShapesIterator():IShapeIterator {
        return new RectangleIterator(this, "all");
    }

    public function getRectangles():Array<RectangleShape> {
        return _rectangles;
    }
}
