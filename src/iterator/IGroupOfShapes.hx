package iterator;

interface IGroupOfShapes {
    public function createLargeShapesIterator():IShapeIterator;
    public function createSmallShapesIterator():IShapeIterator;
    public function createRedShapesIterator():IShapeIterator;
    public function createGreenShapesIterator():IShapeIterator;
    public function createBlueShapesIterator():IShapeIterator;
    public function createAllShapesIterator():IShapeIterator;
}
