package decorator;

class LowerCaseTextPrinterDecorator extends TextPrinterDecorator {
	override public function printText(text:String) {
		text = text.toLowerCase();
		_textPrinterToDecorate.printText(text);
	}
}