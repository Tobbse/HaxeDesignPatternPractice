package strategy;

import util.SquareButton;
import strategy.CreateSquareStrategy;
import strategy.CreateCircleStrategy;
import strategy.CreateRectStrategy;
import strategy.ICreateShapeStrategy;
import strategy.SpawnStrategyButton;
import openfl.display.Sprite;

/**
	The strategy pattern is a behavioral pattern that is used to make a
	certain algorithm or action interchangeable.
	The action that should be performed is encapsulated in an object.
	The object containing the strategy can be interchanged on the fly.

	In this example, we are using different strategies to spawn shapes, like
	`CreateCircleStrategy` and `CreateSquareStrategy`. When you click a button,
	this strategy is changed. When you click another button, a button is spawned.
**/
class StrategyPractice extends Sprite {
	var _spawnShapeButton:SpawnStrategyButton;

	public function new() {
		super();
		mouseChildren = true;
		mouseEnabled = true;
		
		_addSpawnShapeButton();
		_addChangeStrategyButton();
	}

	function _addSpawnShapeButton() {
		_spawnShapeButton = new SpawnStrategyButton(100, 35, this);
		_spawnShapeButton.setSpawnStrategy(_getRandomStrategy());
		_spawnShapeButton.x = 10;
		_spawnShapeButton.y = 10;
		_spawnShapeButton.setText("Spawn");
		_spawnShapeButton.addClickCallback(_onSpawnButtonClicked);
		addChild(_spawnShapeButton);
	}

	function _addChangeStrategyButton() {
		var changeStrategyButton = new SquareButton(100, 35);
		changeStrategyButton.x = Main.WINDOW_WIDTH - changeStrategyButton.width - 10;
		changeStrategyButton.y = 10;
		changeStrategyButton.setText("Change spawning strategy");
		changeStrategyButton.addClickCallback(_onChangeStrategyButtonClicked);
		addChild(changeStrategyButton);
	}

	function _onSpawnButtonClicked() {
		trace("Spawn button clicked!");
		_spawnShapeButton.spawn();
	}

	function _onChangeStrategyButtonClicked() {
		trace("Strategy button clicked!");
		var newStrategy = _getRandomStrategy();
		_spawnShapeButton.setSpawnStrategy(newStrategy);
	}

	function _getRandomStrategy():Class<ICreateShapeStrategy> {
		var strategies:Array<Class<ICreateShapeStrategy>> = [
			CreateSquareStrategy,
			CreateCircleStrategy,
			CreateRectStrategy,
		];
		var index = Std.int(Math.random() * strategies.length);
		trace("index: " + index);
		return strategies[index];
	}
}