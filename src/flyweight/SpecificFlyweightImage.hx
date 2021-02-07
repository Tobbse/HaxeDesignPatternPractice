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
        this.alpha = _imageModel.alpha;
        addChild(new Bitmap(_imageModel.bitmapData));
    }
}
