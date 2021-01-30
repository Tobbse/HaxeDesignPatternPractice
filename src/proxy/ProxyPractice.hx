package proxy;

import openfl.display.Sprite;

class ProxyPractice extends Sprite {
	public function new() {
		super();

		var shapeDataController = new ShapeDataController(this);
		var fileShapeDataProvider = new FileShapeDataProvider("data/proxy.json");
		var shapeDataProxy = new ShapeDataProviderProxy();

		shapeDataController.addShape(fileShapeDataProvider);
		shapeDataController.addShape(shapeDataProxy);
	}
}