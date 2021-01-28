package adapter;

class GermanCar implements IVehicle {
	var _speedKmh:Float;

	public function new() {}

	public function setSpeed(speed:Float) {
		_speedKmh = speed;
	}

	public function getSpeed():Float {
		return _speedKmh;
	}
}