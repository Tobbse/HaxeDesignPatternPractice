package flyweight;

import openfl.display.DisplayObjectContainer;
import openfl.display.Bitmap;

class SpecificFlyweightImage extends DisplayObjectContainer {
    var _imageModel:SpecificImageModel;

    public function new(imageModel:SpecificImageModel) {
        super();
        _imageModel = imageModel;
    }

    public function draw() {
        addChild(_imageModel.border);
        addChild(new Bitmap(_imageModel.bitmapData));
    }
}
