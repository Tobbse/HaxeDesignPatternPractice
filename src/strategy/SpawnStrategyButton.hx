package strategy;

import openfl.display.Sprite;
import util.SquareButton;

class SpawnStrategyButton extends SquareButton {
    var _container:Sprite;
    var _spawnStrategy:ICreateShapeStrategy;

    public function new(width:Int, height:Int, container:Sprite) {
        super(width, height);
        _container = container;
    }

    public function setSpawnStrategy(strategy:Class<ICreateShapeStrategy>) {
        _spawnStrategy = Type.createInstance(strategy, []);
    }

    public function spawn() {
        var position = Main.getRandomPosition();
        var shape = _spawnStrategy.createShape(position.x, position.y);
        _container.addChild(shape);
    }
}