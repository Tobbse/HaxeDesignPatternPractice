package visitor;

import openfl.display.Sprite;

interface IShapeWithVisitor {
	public function acceptVisitor(visitor:ShapeVisitor):Void;
}