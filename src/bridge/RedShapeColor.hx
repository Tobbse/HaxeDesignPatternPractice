package bridge;

class RedShapeColor implements IShapeColor {
    public function new() {}

    public function getColor():UInt {
        return 0xff0000;
    }
}