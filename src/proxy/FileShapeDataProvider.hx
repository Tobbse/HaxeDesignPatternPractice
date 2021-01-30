package proxy;

import haxe.Json;
import haxe.Resource;

class FileShapeDataProvider implements IShapeDataProvider {
	var _jsonData:Dynamic;

	public function new(fileName:String) {
		var fileContent = Resource.getString(fileName);
		_jsonData = Json.parse(fileContent).shape;
	}

	public function getWidth():Float {
		return _jsonData.width;
	}

	public function getHeight():Float {
		return _jsonData.height;
	}

	public function getType():String {
		return _jsonData.type;
	}

	public function getX():Float {
		return _jsonData.x;
	}

	public function getY():Float {
		return _jsonData.y;
	}

	public function getColor():UInt {
		return Std.parseInt(_jsonData.color);
	}
}