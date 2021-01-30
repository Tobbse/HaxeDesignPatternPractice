package proxy;

class ShapeDataProviderProxy implements IShapeDataProvider {
	public function new() {}

	public function getWidth():Float {
		return 150;
	}

	public function getHeight():Float {
		return 150;
	}

	public function getType():String {
		return "Circle";
	}

	public function getX():Float {
		return 1300;
	}

	public function getY():Float {
		return 600;
	}

	public function getColor():UInt {
		return 0x0000ff;
	}
}