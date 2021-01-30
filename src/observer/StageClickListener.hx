package observer;

class StageClickListener implements IEventListener {
	public static var TYPE = "type_StageClickListener";

	public function new() {}

	public dynamic function update() {}

	public function getType():String {
		return TYPE;
	}
}