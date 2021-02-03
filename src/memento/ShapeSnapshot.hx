package memento;

import openfl.geom.Point;

class ShapeSnapshot {
	public final color:UInt;
	public final alpha:Float;
	public final size:Point;
	public final x:Float;
	public final y:Float;
	public final shapeType:String;

	public function new(color:UInt, alpha:Float, size:Point, x:Float, y:Float, shapeType:String) {
		this.color = color;
		this.alpha = alpha;
		this.size = size;
		this.x = x;
		this.y = y;
		this.shapeType = shapeType;
	}
}