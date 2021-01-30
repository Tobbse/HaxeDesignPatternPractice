package composite;

import openfl.geom.Point;
import openfl.display.Sprite;

class CompositePractice extends Sprite {
	public function new() {
		super();

		var square = new MoveableSquare();
		var ellipse = new MoveableEllipse();
		var circle = new MoveableCircle();

		addChild(square);
		addChild(ellipse);
		addChild(circle);

		var composite = new MoveableShapeComposite();
		composite.addMoveableShape(square);
		composite.addMoveableShape(ellipse);
		composite.addMoveableShape(circle);

		composite.setColor(0xff0000);
		composite.setPosition(new Point(500, 500));
		composite.draw();
	}
}