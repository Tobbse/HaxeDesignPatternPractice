package decorator;

import js.html.Blob;
import js.html.FileReader;

class FileTextPrinter implements ITextPrinter {
	var _fileName:String;

	public function new(fileName:String) {
		_fileName = fileName;
	}

	public function loadText():String {
		var fileContent = "This is the content of a text file!"; // Let's pretend we loaded this from a file.
		return fileContent;
	}

	public function printText(text:String) {
		trace("\n");
		trace("File:" + _fileName + "\n" + text);
		trace("\n");
	}
}