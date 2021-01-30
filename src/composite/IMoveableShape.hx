package composite;

import openfl.geom.Point;

interface IMoveableShape {
	public function setPosition(position:Point):Void;
	public function setColor(color:UInt):Void;
	public function draw():Void;
}