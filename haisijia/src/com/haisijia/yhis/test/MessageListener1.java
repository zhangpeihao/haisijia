package com.haisijia.yhis.test;

import com.haisijia.common.AppMessage;
import com.haisijia.common.AppServiceRegistry;
import com.haisijia.fp.FpUtil;

public class MessageListener1 {
	/**
	 * 
	 * @param appMessage
	 */
	public static void processMessage(AppMessage appMessage) {
		System.out.println("MessageListener1.processMessage is running......");
	}
}
