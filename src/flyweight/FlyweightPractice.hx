package flyweight;

import openfl.display.BitmapData;
import openfl.display.Sprite;

class FlyweightPractice extends Sprite {
    var numSquares = 1000;
    var _images:Array<SpecificImage> = [];
    var _flyweightImages:Array<SpecificFlyweightImage> = [];
    var _specificImageModel:SpecificImageModel;

    // TODO: this example seems stupid
	public function new() {
        super();

        //_addNormalSquares(); // ~50 MB Memory with 10k squares
        _addFlyweightSquares(); // ~20 MB Memory with 10k squares
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