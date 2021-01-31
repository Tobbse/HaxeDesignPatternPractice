import openfl.display.Sprite;

// TODO: Move launch.json from etc. .vscode into project root 

class App extends Sprite {
	static function main () {
		var stage = PracticeStage.getInstance();
		js.Browser.document.body.appendChild(stage.element);
	}
}