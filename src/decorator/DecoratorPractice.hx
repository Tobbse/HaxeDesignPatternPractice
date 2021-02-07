package decorator;

import util.PracticeInfoLabel;
import openfl.display.Sprite;

/**
	The decorator pattern is a structural pattern used in order to add certain additional
	behaviors to classes. We put these behaviors inside of containers wrapping them.
	The example here is a bit weird but finding a good example working with shapes was not easy.

	For this example, imagine having an interface `ITextPrinter` that would print some text.
	We have two classes implementing this interface. `FileTextPrinter` loads some text from a
	file and then prints it. `StaticTextPrinter` loads them predefined, static texts and prints it.

	The decorator pattern allows us to change the way these printers work, even on runtime by adding
	certain behaviors to it.
	We could some decorators like `UppercaseTextPrinterDecorator` or `DecryptTextPrinterDecorator`,
	which would first decrypt a given text, no matter where it comes from, and then print it out.

	The bass decorator class `TextPrinterDecorator` also implements the `ITextPrinter` interface.
	It also receives an instance of `ITextPrinter` when it is created - this is the printer that should
	be decorated.
	We then override the function we would like to change.
**/
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