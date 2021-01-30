package observer;

class EventManager {
	private static var _instance:EventManager;

	private var _listeners:Map<String, Array<IEventListener>> = new Map();

	function new() {}

	public static function getInstance() {
		if (_instance == null) _instance = new EventManager();
		return _instance;
	}

	public function subscribe(subscriber:IEventListener) {
		var eventType = subscriber.getType();
		if (_listeners[eventType] == null) _listeners[eventType] = [];
		_listeners[eventType].push(subscriber);
	}

	// TODO [observer]: subscribe / unsubscribe listeners when some button is clicked
	public function unsubscribe(eventType:String, subscriber:IEventListener) {
		var eventType = subscriber.getType();
		if (_listeners[eventType] == null) return;
		_listeners[eventType].remove(subscriber);
	}

	public function notify(eventType:String) {
		var subscribers = _listeners[eventType];
		if (subscribers == null) return;

		for (listener in subscribers) {
			listener.update();
		}
	}
}