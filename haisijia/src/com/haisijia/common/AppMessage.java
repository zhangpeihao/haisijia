package com.haisijia.common;

import org.json.JSONObject;

/**
 * 应用消息类
 * @author Administrator
 *
 */
public class AppMessage {
	public AppMessage(long messageId, String messageName, JSONObject params) {
		this.messageId = messageId;
		this.messageName = messageName;
		this.params = params;
	}
	
	public long getMessageId() {
		return messageId;
	}
	public void setMessageId(long messageId) {
		this.messageId = messageId;
	}
	public String getMessageName() {
		return messageName;
	}
	public void setMessageName(String messageName) {
		this.messageName = messageName;
	}
	public JSONObject getParams() {
		return params;
	}
	public void setParams(JSONObject params) {
		this.params = params;
	}
	private long messageId = 0;
	private String messageName = null;
	private JSONObject params = null;
}
