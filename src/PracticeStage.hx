import openfl.geom.Point;
import buttons.SquareButton;
import bridge.BridgePractice;
import builder.BuilderPractice;
import strategy.StrategyPractice;
import openfl.display.Sprite;
import openfl.display.Stage;

class PracticeStage extends Stage {
	// There is no final?!
	public static inline var APP_WIDTH = 1600;
	public static inline var APP_HEIGHT = 900;

	static var _instance:PracticeStage;

	var _currentPageIndex:Int = 0;
	var _currentPage:Sprite;
	var _pages:Array<Class<Sprite>>;

	function new () {
		super(APP_WIDTH, APP_HEIGHT, 0x00FFFF, App);

		_pages = [
			StrategyPractice,
			BuilderPractice,
			BridgePractice
		];

		_addPageButton();
		_changePageToCurrentIndex();
		trace ("Starting!");
	}

	public static function getInstance():PracticeStage {
		if (_instance == null) _instance = new PracticeStage();
		return _instance;
	}

	public static function getRandomPosition() {
		var randomX = Math.random() * APP_WIDTH;
        var randomY = (Math.random() * (APP_HEIGHT - 100)) + 100;
        return new Point(randomX, randomY);
	}

	function _addPageButton() {
		var pageButton = new SquareButton(100, 50);
		pageButton.x = (APP_WIDTH - pageButton.width) / 2;
		pageButton.y = 10;
		pageButton.setText("Change Practice Page");
		pageButton.addClickCallback(_onPageButtonClicked);
		addChild(pageButton);
	}

	function _onPageButtonClicked() {
		_currentPageIndex = _getNextPageIndex();
		_changePageToCurrentIndex();
	}

	function _changePageToCurrentIndex() {
		if (_currentPage != null && _currentPage.parent != null) removeChild(_currentPage);

		_currentPage = Type.createInstance(_pages[_currentPageIndex], []);
		addChildAt(_currentPage, 0);
	}

	function _getNextPageIndex():Int {
		var nextIndex = _currentPageIndex + 1;
		if (nextIndex >= _pages.length) nextIndex = 0;
		return nextIndex;
	}
}