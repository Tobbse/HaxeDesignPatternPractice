package observer;

class StageClickListener implements IEventListener {
	public static inline final TYPE = "type_StageClickListener";

	public function new() {}

	public dynamic function update() {}

	public function getType():String {
		return TYPE;
	}
}