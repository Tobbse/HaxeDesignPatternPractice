package proxy;

interface IShapeDataProvider {
	public function getWidth():Float;
	public function getHeight():Float;
	public function getType():String;
	public function getX():Float;
	public function getY():Float;
	public function getColor():UInt;
}