package decorator;

class TextPrinterDecorator implements ITextPrinter {
	var _textPrinterToDecorate:ITextPrinter;

	public function new(textPrinter:ITextPrinter) {
		_textPrinterToDecorate = textPrinter;
	}

	public function loadText():String {
		return _textPrinterToDecorate.loadText();
	}

	public function printText(text:String) {
		_textPrinterToDecorate.printText(text);
	}
}