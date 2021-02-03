package decorator;

import util.PracticeInfoLabel;
import openfl.display.Sprite;

class DecoratorPractice extends Sprite {
	public function new() {
		super();
		addChild(new PracticeInfoLabel("Check the console output."));

		var fileTextPrinter = new FileTextPrinter("data/decorator.txt");
		var staticTextPrinter = new StaticTextPrinter();

		var upperCaseFileTextPrinter = new UpperCaseTextPrinterDecorator(fileTextPrinter);
		upperCaseFileTextPrinter.printText(upperCaseFileTextPrinter.loadText());

		var lowerCaseFileTextPrinter = new LowerCaseTextPrinterDecorator(fileTextPrinter);
		lowerCaseFileTextPrinter.printText(lowerCaseFileTextPrinter.loadText());

		var encryptedFileTextPrinter = new EncryptTextPrinterDecorator(fileTextPrinter);
		encryptedFileTextPrinter.printText(encryptedFileTextPrinter.loadText());

		var highlightFileTextPrinter = new HighlightTextPrinterDecorator(fileTextPrinter);
		highlightFileTextPrinter.printText(highlightFileTextPrinter.loadText());

		var upperCaseStaticTextPrinter = new UpperCaseTextPrinterDecorator(staticTextPrinter);
		upperCaseStaticTextPrinter.printText(upperCaseStaticTextPrinter.loadText());

		var lowerCaseStaticTextPrinter = new LowerCaseTextPrinterDecorator(staticTextPrinter);
		lowerCaseStaticTextPrinter.printText(lowerCaseStaticTextPrinter.loadText());

		var encryptedStaticTextPrinter = new EncryptTextPrinterDecorator(staticTextPrinter);
		encryptedStaticTextPrinter.printText(encryptedStaticTextPrinter.loadText());

		var highlightStaticTextPrinter = new HighlightTextPrinterDecorator(staticTextPrinter);
		highlightStaticTextPrinter.printText(highlightStaticTextPrinter.loadText());
	}
}