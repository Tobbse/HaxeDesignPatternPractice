import prototype.PrototypePractice;
import iterator.IteratorPractice;
import flyweight.FlyweightPractice;
import observer.ObserverPractice;
import composite.CompositePractice;
import decorator.DecoratorPractice;
import util.PracticeHeadline;
import proxy.ProxyPractice;
import adapter.AdapterPractice;
import openfl.geom.Point;
import util.SquareButton;
import bridge.BridgePractice;
import builder.BuilderPractice;
import strategy.StrategyPractice;
import openfl.display.Sprite;

class Main extends Sprite {
	public static inline final WINDOW_WIDTH = 1600;
	public static inline final WINDOW_HEIGHT = 900;

	static var _instance:Main;

	var _currentPageIndex:Int = 0;
	var _currentPage:Sprite;
	var _pages:Array<Class<Sprite>>;

	function new () {
		super();

		#if sys trace("File system can be used") #end // Spoiler: We can't

		graphics.beginFill(0x00ffff, 1);
		graphics.drawRect(0, 0, 1600, 900);
		graphics.endFill();

		_pages = [
			StrategyPractice,
			BuilderPractice,
			BridgePractice,
			AdapterPractice,
			ProxyPractice,
			DecoratorPractice,
			CompositePractice,
			ObserverPractice,
			FlyweightPractice,
			IteratorPractice,
			PrototypePractice
		];

		_addPageButton();
		_addSeparator();
		_changePageToCurrentIndex();
	}

	public static function getInstance():Main {
		if (_instance == null) _instance = new Main();
		return _instance;
	}

	public static function kill() {
		_instance = null;
	}

	public static function getRandomPosition() {
		var randomX = Math.random() * WINDOW_WIDTH;
        var randomY = (Math.random() * (WINDOW_HEIGHT - 150)) + 150;
        return new Point(randomX, randomY);
	}

	function _addPageButton() {
		var pageButton = new SquareButton(100, 50);
		pageButton.x = (WINDOW_WIDTH - pageButton.width) / 2;
		pageButton.y = 10;
		pageButton.setText("Change Practice Page");
		pageButton.addClickCallback(_onPageButtonClicked);
		addChild(pageButton);
	}

	function _addSeparator() {
		var separator = new Sprite();
		separator.y = 99;
		separator.graphics.beginFill(0x000000, 1);
        separator.graphics.drawRect(0, 0, WINDOW_WIDTH, 1);
		separator.graphics.endFill();
		addChild(separator);
	}

	function _onPageButtonClicked() {
		_currentPageIndex = _getNextPageIndex();
		_changePageToCurrentIndex();
	}

	function _changePageToCurrentIndex() {
		if (_currentPage != null && _currentPage.parent != null) removeChild(_currentPage);

		var pageClass = _pages[_currentPageIndex];
		_currentPage = Type.createInstance(pageClass, []);
		_currentPage.addChild(new PracticeHeadline(Type.getClassName(pageClass)));
		addChildAt(_currentPage, 0);
	}

	function _getNextPageIndex():Int {
		var nextIndex = _currentPageIndex + 1;
		if (nextIndex >= _pages.length) nextIndex = 0;
		return nextIndex;
	}
}