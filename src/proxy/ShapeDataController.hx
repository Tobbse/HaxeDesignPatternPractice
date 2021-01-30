package proxy;

import openfl.display.Sprite;

class ShapeDataController {
    var _container:Sprite;

    public function new(container:Sprite) {
        _container = container;        
    }

    public function addShape(shapeDataProvider:IShapeDataProvider) {
        var shape = new Sprite();
        shape.x = shapeDataProvider.getX();
        shape.y = shapeDataProvider.getY();
        
        shape.graphics.beginFill(shapeDataProvider.getColor(), 1);

        switch (shapeDataProvider.getType()) {
            case "Rect" | "Square":
                shape.graphics.drawRect(0, 0, shapeDataProvider.getWidth(), shapeDataProvider.getHeight());
            
            case "Circle":
                shape.graphics.drawCircle(0, 0, Math.max(shapeDataProvider.getWidth(), shapeDataProvider.getHeight()));
        }
        shape.graphics.endFill();

        _container.addChild(shape);
    }
}