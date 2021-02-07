package adapter;

class AmericanToGermanCarAdapter extends GermanCar {
	var _mileToKmMultiplier = 1.60934;
	var _americanCar:AmericanCar;

	public function new(americanCar:AmericanCar) {
		super();
		_americanCar = americanCar;
	}

	override public function getSpeed():Float {
		return _americanCar.getSpeed() * _mileToKmMultiplier;
	}
}