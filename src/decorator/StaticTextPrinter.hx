package decorator;

class StaticTextPrinter implements ITextPrinter {
	public function new() {}

	public function loadText():String {
		return "This is some very static text, yay.";
	}

	public function printText(text:String) {
		trace("\n");
		trace(text);
		trace("\n");
	}
}