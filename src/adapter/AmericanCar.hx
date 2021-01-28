package adapter;

class AmericanCar implements IVehicle {
	var _speedMph:Float;

	public function new() {}

	public function setSpeed(speed:Float) {
		_speedMph = speed;
	}

	public function getSpeed():Float {
		return _speedMph;
	}
}