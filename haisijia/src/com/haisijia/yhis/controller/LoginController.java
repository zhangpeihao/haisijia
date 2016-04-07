package com.haisijia.yhis.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.haisijia.common.AppConstants;
import com.haisijia.common.AppMessage;
import com.haisijia.common.AppMessageBus;
import com.haisijia.common.AppServiceRegistry;
import com.haisijia.common.AppUtil;
import com.haisijia.controller.AppController;
import com.haisijia.controller.MainServlet;
import com.haisijia.fp.FpUtil;
import com.haisijia.jedis.JedisEngine;
import com.haisijia.model.JspParamsVo;
import com.haisijia.yhis.model.LoginModel;
import com.haisijia.yhis.model.UserModel;
import com.haisijia.yhis.model.UserVo;

public class LoginController implements AppController {
	public LoginController() {
		// 向消息总线注册
		AppMessageBus.register("a1", LoginController::processMessage);
	}
	
	/**
	 * 处理页面显示请求
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 */
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String template = MainServlet.getTemplate(cmd);		
		JspParamsVo jspParamsVo = MainServlet.getJspParamsVo(cmd);
		LoginModel loginModel = new LoginModel();
		loginModel.setOriginUrl("Ŀ��ҳ��URL");
		loginModel.setJspParamsVo(jspParamsVo);
        AppServiceRegistry.getInstance().putModel("mm2", loginModel);        
        if (request.getAttribute("loginMode") != null) {
        	request.setAttribute("originUrl", request.getRequestURI() + "?" + request.getQueryString());
        }        
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher(  
                template);
        request.setAttribute("model", loginModel);
        requestDispatcher.forward(request, response);
	}	

	/**
	 * 处理Ajax请求
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 */
	public static void doAjaxGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {	
		switch (cmd) {
		case CMD_LOGIN_USER_AJAX:
			loginUserAjax(request, response, cmd);
			break;
		case CMD_SET_COOKIE_AJAX:
			setCookieAjax(request, response, cmd);
			break;
		case CMD_LOGOUT_USER_AJAX:
			logoutUserAjax(request, response, cmd);
			break;
		}
	}
	
	/**
	 * 消息总线的消息响应函数
	 * @param msg
	 * 【闫涛 2016.03.02】初始版本
	 */
	public static void processMessage(AppMessage msg) {		
	}
	
	/**
	 * 以Ajax方式进行用户注册
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 * 【闫涛 2016.03.02】初始版本
	 */
	private static void loginUserAjax(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String loginName = AppUtil.getParameter(request, "loginName");
		String loginPwd = AppUtil.getParameter(request, "loginPwd");
		// 通过登录名和口令求出userId
		long userId = loginUser(loginName, loginPwd);
		JSONObject json = new JSONObject();
		json.put("status", "Ok");
		json.put("userId", "" + userId);
		json.put("userName", "u1001");
		AppUtil.sendHttpAjaxResponse(response, json);
	}
	
	/**
	 * 根据登录名和口令求出userId
	 * @param loginName
	 * @param loginPwd
	 * @return
	 * 【闫涛 2016.03.02】初始版本
	 */
	private static long loginUser(String loginName, String loginPwd) {
		long userId = 0;
		Method mtd1 = AppServiceRegistry.getInstance().getService(AppConstants.SERVICE_LOGIN_USER).get();
		String resp = "";
    	JSONObject json = new JSONObject();
    	json.put("cmd", "loginUser");
    	json.put("p", "pc");
    	json.put("v", "0.0.1");
    	json.put("loginName", loginName);
    	json.put("loginPwd", loginPwd);
    	AppMessage msg = new AppMessage(1, "loginUser", json);
    	try {
			resp = (String)mtd1.invoke(null, msg);
		} catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		JSONObject respJson = new JSONObject(resp);
		userId = Long.parseLong(respJson.getString("userId"));
		return userId;
	}
	
	/**
	 * 通过Ajax方式请求设置Cookie并将用户信息保存到Redis中
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 * 【闫涛 2016.03.02】初始版本
	 */
	private static void setCookieAjax(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String userId = AppUtil.getParameter(request, "userId");
		String rememberMode = AppUtil.getParameter(request, "rememberMode");
		Cookie cookie = new Cookie("userId", userId);
		if (rememberMode.equals("1")) {
			cookie.setMaxAge(60*60*24*14);
		} else {
			cookie.setMaxAge(60*30);
		}
		response.addCookie(cookie);
		JSONObject json = new JSONObject();
		json.put("status", "Ok");		
		UserVo userVo = UserModel.getUserVoById(Long.parseLong(userId)).orElse(new UserVo());
		if (userVo.getUserId() > 0) {
			Map<String, String> userParams = new HashMap<String, String>();
			userParams.put("userName", userVo.getUserName());
			userParams.put("loginName", userVo.getLoginName());
			userParams.put("roleId", "" + userVo.getRoleId());
			userParams.put("hospitalId", "" + userVo.getHospitalId());
			JedisEngine.setJedisValue(JedisEngine::setMap, "u" + userVo.getUserId(), userParams);
		}
		
		AppUtil.sendHttpAjaxResponse(response, json);
	}
	
	/**
	 * 用户登出响应函数
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 * 【闫涛 2016.03.31】初始版本
	 */
	private static void logoutUserAjax(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		// 删除Redis中的用户信息
		JedisEngine.delJedisValue(JedisEngine::delValue, "u" + request.getAttribute("userId"));
		// 删除Cookie中内容
		Cookie cookie = new Cookie("userId", null);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		JSONObject json = new JSONObject();
		json.put("status", "Ok");
		AppUtil.sendHttpAjaxResponse(response, json);
	}
	
	public final static String CMD_SHOW_LOGIN = "showLogin";
	public final static String CMD_LOGIN_USER_AJAX = "loginUserAjax";
	public final static String CMD_SET_COOKIE_AJAX = "setCookieAjax";
	public final static String CMD_LOGOUT_USER_AJAX = "logoutUserAjax";
}
