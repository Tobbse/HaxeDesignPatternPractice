package builder;

interface IShapeBuilder {
	function setSize(width:Float, height:Float):Void;
	function setColor(color:UInt):Void;
	function setShape(shape:ShapeType):Void;
	function setText(text:String):Void;
	function reset():Void;
}