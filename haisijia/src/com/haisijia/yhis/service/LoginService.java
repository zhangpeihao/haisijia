package com.haisijia.yhis.service;

import org.json.JSONObject;

import com.haisijia.common.AppMessage;
import com.haisijia.common.AppUtil;
import com.haisijia.yhis.model.LoginModel;

public class LoginService {
	/**
	 * 执行业务逻辑入口函数
	 * @param msg
	 * @return
	 * 【闫涛 2016.03.02】初始版本
	 */
	public static String execute(AppMessage msg) {
		String resp = "";
		try {
			JSONObject params = msg.getParams();
			String cmd = params.getString("cmd");
			String platform = params.getString("p");
			String version = params.getString("v");
			switch (cmd) {
			case "loginUser":
				return loginUserInService(params);
			}
		} catch (Exception ex) {
			JSONObject json = new JSONObject();
			json.put("status", "Error");
			json.put("reason", ex.getMessage());
			return json.toString();
		}
		return "";
	}
	
	/**
	 * 用户注册
	 * @param params
	 * @return
	 * 【闫涛 2016.03.02】初始版本
	 */
	private static String loginUserInService(JSONObject params) {
		String loginName = params.getString("loginName");
		String loginPwd = params.getString("loginPwd");
		if (loginPwd != null) {
			loginPwd = AppUtil.encodeSha1(loginPwd);
		}
		JSONObject json = new JSONObject();
		json.put("userId", "" + loginUser(loginName, loginPwd));
		return json.toString();
	}
	
	/**
	 * 用户注册
	 * @param loginName
	 * @param loginPwd
	 * @return
	 * 【闫涛 2016.03.02】初始版本
	 */
	public static long loginUser(String loginName, String loginPwd) {
		return LoginModel.loginUser(loginName, loginPwd);
	}
}
