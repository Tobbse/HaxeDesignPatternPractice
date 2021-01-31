package flyweight;

import openfl.display.BitmapData;
import openfl.display.Sprite;

class FlyweightPractice extends Sprite {
    var numSquares = 10000;
    var _images:Array<SpecificImage> = [];
    var _flyweightImages:Array<SpecificFlyweightImage> = [];
    var _specificImageModel:SpecificImageModel;

	public function new() {
        super();

        //_addNormalSquares(); // ~50 MB Memory
        _addFlyweightSquares(); // ~20 MB Memory
    }

    function _addNormalSquares() {
        for (i in 0...numSquares) {
            var image = new SpecificImage();

            var position = PracticeStage.getRandomPosition();
            image.x = position.x;
            image.y = position.y;

            addChild(image);

            image.draw();
        }
    }

    function _addFlyweightSquares() {
        _specificImageModel = new SpecificImageModel();

        for (i in 0...numSquares) {
            var flyweightImage = new SpecificFlyweightImage(_specificImageModel);

            var position = PracticeStage.getRandomPosition();
            flyweightImage.x = position.x;
            flyweightImage.y = position.y;

            addChild(flyweightImage);

            flyweightImage.draw();
        }
    }
}
