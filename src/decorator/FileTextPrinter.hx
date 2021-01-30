package decorator;

import haxe.Resource;

class FileTextPrinter implements ITextPrinter {
	var _fileName:String;

	public function new(fileName:String) {
		_fileName = fileName;
	}

	public function loadText():String {
		return Resource.getString(_fileName);
	}

	public function printText(text:String) {
		trace("\n");
		trace("File:" + _fileName + "\n" + text);
		trace("\n");
	}
}