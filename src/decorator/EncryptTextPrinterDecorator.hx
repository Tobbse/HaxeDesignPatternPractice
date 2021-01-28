package decorator;

class EncryptTextPrinterDecorator extends TextPrinterDecorator {
	override public function loadText():String {
		var text = _textPrinterToDecorate.loadText();
		return _encryptedText(text);
	}

	function _encryptedText(text:String):String {
		// Let's pretend we are encrypting some text here.
		return "57/$7$54536&2§$2§%GRRgD§$53q$ERQr§$Q5§QRq3r§$643q§Q§3";
	}
}