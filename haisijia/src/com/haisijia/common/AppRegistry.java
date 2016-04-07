package com.haisijia.common;

import java.lang.reflect.Method;

/**
 * 应用注册表类，主要负责服务管理
 * 闫涛
 */
public class AppRegistry {
	public static AppRegistry getInstance() {
		if (null == instance) {
			instance = new AppRegistry();
		}
		return instance;
	}
	
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}

	private long userId = 0;
	private static AppRegistry instance = null;
}
