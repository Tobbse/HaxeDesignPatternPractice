package bridge;

class GreenShapeColor implements IShapeColor {
    public function new() {}

    public function getColor():UInt {
        return 0x00ff00;
    }
}