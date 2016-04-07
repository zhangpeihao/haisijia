package com.haisijia.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

import com.haisijia.yhis.test.MessageListener1;

public class AppMessageBus {
	public static void initialize() {
		List<Consumer<AppMessage>> listeners = new ArrayList<Consumer<AppMessage>>();
		listeners.add(MessageListener1::processMessage);
		messageBus.put("m1", listeners);
	}
	
	public static void postMessage(AppMessage msg) {
		List<Consumer<AppMessage>> listeners = messageBus.get(msg.getMessageName());
		if (listeners != null) {
			listeners.forEach(x->x.accept(msg));
		}
	}
	
	public static void register(String messageName, Consumer<AppMessage> listener) {
		messageBus.get(messageName).add(listener);
	}
	
	private static Map<String, List<Consumer<AppMessage>>> messageBus = new HashMap<String, List<Consumer<AppMessage>>>();
}
