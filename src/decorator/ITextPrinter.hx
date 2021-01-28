package decorator;

// Those functions wouldn't really make sense in a real use case, this was just done to find a very simple example.
interface ITextPrinter {
	public function loadText():String;
	public function printText(text:String):Void;
}