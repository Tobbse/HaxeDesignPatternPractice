package decorator;

class UpperCaseTextPrinterDecorator extends TextPrinterDecorator {
	override public function printText(text:String) {
		text = text.toUpperCase();
		_textPrinterToDecorate.printText(text);
	}
}