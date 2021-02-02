package iterator;

interface IShapeIterator {
    public function getNext():Shape;
    public function hasMore():Bool;
    public function reset():Void;
}
