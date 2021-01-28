package decorator;

class HighlightTextPrinterDecorator extends TextPrinterDecorator {
	override public function printText(text:String) {
		trace ("######################################");
		_textPrinterToDecorate.printText(text);
		trace ("######################################");
	}
}