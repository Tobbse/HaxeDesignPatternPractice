package flyweight;

/**
    Flyweight is a structural pattern that reduces the memory consumption of an object, by removing
    what is called the "extrinsic state" from all objects of a type, and instead storing it in one
    centralized place with only one instance that is shared across all flyweight objects.

    In this example, we put this extrinstic state of a `SpecificImage` in a `SpecificImageModel`,
    and leave only the instrinsic state in the `SpecificFlyweightImage`.
    The image has a border and a field of type `BitmapData`, which is now stored in the model,
    instead of being created for every one of the images.

    // TODO:    This example seems stupid, we pretend that we need to store these primives inside
                the class, but we actually don't. We just do it for the sake of demonstrating it. 
**/
import util.SquareButton;
import openfl.display.Sprite;

class FlyweightPractice extends Sprite {
    var numSquares = 1000;
    var _images:Array<SpecificImage> = [];
    var _flyweightImages:Array<SpecificFlyweightImage> = [];
    var _specificImageModel:SpecificImageModel;
    var _useFlyweight = false;
    var _changeShapeButton:SquareButton;
    var _imageContainer:Sprite;

	public function new() {
        super();

        _imageContainer = new Sprite();
        addChild(_imageContainer);

        _changeShapeButton = new SquareButton(100, 50);
		_changeShapeButton.x = 1000;
		_changeShapeButton.y = 10;
		_changeShapeButton.addClickCallback(_updateSquares);
		addChild(_changeShapeButton);

        _updateSquares();
    }

    function _updateSquares() {
        _imageContainer.removeChildren();

        if (_useFlyweight) {
            _changeShapeButton.setText("Using flyweight method now");
            _addFlyweightSquares();
        } else {
            _changeShapeButton.setText("Using normal method now");
            _addNormalSquares();
        }
        _useFlyweight = !_useFlyweight;
    }

    // ~17 MB Memory with 5k squares
    function _addNormalSquares() {
        for (i in 0...numSquares) {
            var image = new SpecificImage(5.0, 5.0, 0xff0000, 1.0);

            var position = Main.getRandomPosition();
            image.x = position.x;
            image.y = position.y;

            _imageContainer.addChild(image);

            image.draw();
        }
    }

    // ~9 MB Memory with 5k squares
    function _addFlyweightSquares() {
        _specificImageModel = new SpecificImageModel(5.0, 5.0, 0xff0000, 1.0);

        for (i in 0...numSquares) {
            var flyweightImage = new SpecificFlyweightImage(_specificImageModel);

            var position = Main.getRandomPosition();
            flyweightImage.x = position.x;
            flyweightImage.y = position.y;

            _imageContainer.addChild(flyweightImage);

            flyweightImage.draw();
        }
    }
}
