package proxy;

import openfl.display.Sprite;

/**
	The proxy pattern is a structural pattern that is usesd in order to create
	a substitute, or a "proxy" for another object. It forwards the access to some
	original object and enables you to perform additional actions before or after
	them, like some generalized decorator for one specific object.

	In the example, a `ShapeDataController` is used that adds shapes to the stage.
	It exposes a function `addShape` with a parameter of the type `IShapeDataProvider`.
	This provider provides the data that is used in order to create the wanted shape.

	We assume that we normally load this data from a file. This happens in the class
	`FileShapeDataProvider`. However, for some reason, we might have no file or no
	access to the file system, so we create a proxy for this data provider class,
	`ShapeDataProviderProxy`. This can be used in order to fake/test objects, for
	example. It provides the same API and functions, implementing the same interface,
	but it does not load anything from a file. Instead, it just provides fake data.
**/
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