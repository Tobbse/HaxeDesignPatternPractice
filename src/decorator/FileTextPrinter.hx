package decorator;

import openfl.Assets;
import haxe.Resource;

class FileTextPrinter implements ITextPrinter {
	var _fileName:String;

	public function new(fileName:String) {
		_fileName = fileName;
	}

	public function loadText():String {
		var resourcePath = "data/decorator.txt";
		var str:String = Resource.getString(resourcePath);
		if (str == null) {
			str = Assets.getText(resourcePath);
		}
		return str;
	}

	public function printText(text:String) {
		trace("\n");
		trace("File:" + _fileName + "\n" + text);
		trace("\n");
	}
}