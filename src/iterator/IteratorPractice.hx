package iterator;

import openfl.events.MouseEvent;
import util.SquareButton;
import openfl.display.Sprite;

/**
    Iterator belongs to the group of structural patterns. It assumes that we have a group
    of a certain type of objects.
    This group, for example an array, is stored in a `Collection`, in this case `GroupOfCircles`.
    This collection provides an `Iterator`, which is an object that allows the user to iterate
    over this collection, without actually knowing about the content of it.

    We can pass this iterator to other actors, which in turn have no possibility of changing the
    underlying colletion, but the interface of the iterator provides them with the possibility
    to get the next object from inside the collection.
**/
class IteratorPractice extends Sprite {
    var _shapeContainer:Sprite = new Sprite();
    var _iterators:Array<IShapeIterator> = [];

	public function new() {
        super();
        
        var circleCollection = GroupOfCircles.createRandomGroupOfCircles();
        _iterators.push(circleCollection.createLargeShapesIterator());
        _iterators.push(circleCollection.createSmallShapesIterator());
        _iterators.push(circleCollection.createRedShapesIterator());
        _iterators.push(circleCollection.createGreenShapesIterator());
        _iterators.push(circleCollection.createBlueShapesIterator());
        _iterators.push(circleCollection.createAllShapesIterator());

        var rectangleCollection = GroupOfRectangles.createRandomGroupOfRectangles();
        _iterators.push(rectangleCollection.createLargeShapesIterator());
        _iterators.push(rectangleCollection.createSmallShapesIterator());
        _iterators.push(rectangleCollection.createRedShapesIterator());
        _iterators.push(rectangleCollection.createGreenShapesIterator());
        _iterators.push(rectangleCollection.createBlueShapesIterator());
        _iterators.push(rectangleCollection.createAllShapesIterator());

        var button = new SquareButton(100, 50);
        button.x = 1000;
        button.y = 10;
        button.setText("Display random collection of shapes");
        button.addEventListener(MouseEvent.CLICK, _onButtonClick);
        
        addChild(button);
        addChild(_shapeContainer);
    }

    function _onButtonClick(event:MouseEvent) {
        trace("Choosing random collection of shapes");
        _shapeContainer.removeChildren();
        
        var iterator = _getRandomIterator();

        while (iterator.hasMore()) {
            var shape = iterator.getNext();
            var position = Main.getRandomPosition();
            shape.x = position.x;
            shape.y = position.y;
            _shapeContainer.addChild(shape);
        }
        iterator.reset();
    }

    function _getRandomIterator():IShapeIterator {
        var index = Std.int(Math.random() * _iterators.length);
        trace("iterator index: " + index);
		return _iterators[index];
    }
}
