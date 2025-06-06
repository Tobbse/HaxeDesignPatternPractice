package bridge;

class SquareShape extends Shape {
    public function new(shapeColor:IShapeColor) {
        super(shapeColor);
    }

    override function _drawShape() {
		graphics.beginFill(_shapeColor.getColor(), 1);
        graphics.drawRect(0, 0, 50, 50);
        graphics.endFill();
    }
}