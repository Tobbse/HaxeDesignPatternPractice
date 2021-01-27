import openfl.display.Stage;
import openfl.display.Sprite;

class App extends Sprite {
	static function main () {
		var stage = PracticeStage.getInstance();
		js.Browser.document.body.appendChild(stage.element);
	}
}