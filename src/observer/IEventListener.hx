package observer;

interface IEventListener {
	public dynamic function update():Void;
	public function getType():String;
}