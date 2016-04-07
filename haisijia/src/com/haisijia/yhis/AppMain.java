package com.haisijia.yhis;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.Principal;
import java.sql.Connection;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpUpgradeHandler;
import javax.servlet.http.Part;

import org.json.JSONObject;

import redis.clients.jedis.Jedis;

import com.haisijia.common.AppConstants;
import com.haisijia.common.AppMessage;
import com.haisijia.common.AppMessageBus;
import com.haisijia.common.AppServiceRegistry;
import com.haisijia.common.AppUtil;
import com.haisijia.fp.FServletDoGet;
import com.haisijia.fp.FpUtil;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.jedis.JedisEngine;
import com.haisijia.model.AppModel;
import com.haisijia.model.dev.DevPageModel;
import com.haisijia.model.dev.DevPageVo;
import com.haisijia.yhis.controller.LoginController;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;
import com.haisijia.yhis.model.UserVo;
import com.haisijia.yhis.service.LoginService;
import com.haisijia.yhis.test.ServiceTest1;

public class AppMain {
	public static void main(String[] args) {
		System.out.println("YHIS is running....");
		//AppMessageBus.initialize();
		AppMain appMain = new AppMain();
		appMain.startup();
	}
	
	public void startup() {
		JdbcDao.initializeConnectionPool(2, 5);		
		Map<String, String> params = new HashMap<String, String>();
		int total = DevPageModel.getDevPagesTotal(params);
		System.out.println("total=" + total + "!");
	}
	
	private void testJedis() {
		Jedis jedis = JedisEngine.getJedis();
		jedis.set("userName", "����");
		System.out.println("u=" + jedis.get("userName") + "!");
		jedis.del("userName");
		System.out.println("u1=" + jedis.get("userName") + "!");
	}
}
