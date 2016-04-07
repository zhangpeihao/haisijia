package com.haisijia.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.haisijia.common.AppServiceRegistry;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.jedis.JedisEngine;
import com.haisijia.model.AppModel;
import com.haisijia.model.AppServiceModel;
import com.haisijia.model.AppServiceVo;
import com.haisijia.model.CmdHttpRequestModel;
import com.haisijia.model.CmdHttpRequestVo;
import com.haisijia.model.CmdJspTemplateModel;
import com.haisijia.model.CmdJspTemplateVo;
import com.haisijia.model.CmdModel;
import com.haisijia.model.CmdVo;
import com.haisijia.model.JspParamsModel;
import com.haisijia.model.JspParamsVo;
import com.haisijia.yhis.service.LoginService;

public class AppServlet extends HttpServlet {
    
    public static String getTemplate(String cmd) {
    	return templateMap.get(cmd);
    }
    
    public static JspParamsVo getJspParamsVo(String cmd) {
    	return jspParamsMap.get(cmd);
    }
    
    protected static final long serialVersionUID = -1915463532411657451L;
    protected static Map<String, String> templateMap = null;
    protected static Map<String, JspParamsVo> jspParamsMap = null;
    protected static Map<String, Method> httpRequestMap = null;
    
    /**
     * 程序启动时运行的代码块，主要是初始化数据库连接池，
     * 页面、请求处理等
     * 【闫涛 2016.03.04】初始版本
     */
    static {
    	JdbcDao.initializeConnectionPool(5, 5);
    	initializeAppServiceRegistry();
    	initializeTemplateMap();
    	initializeJspParamsMap();
    	initializeHttpRequestMap();
    }
    
    /**
     * 初始化应用服务注册表
     * 【闫涛 2016.03.04】初始版本
     */
    private static void initializeAppServiceRegistry() {
    	List<AppServiceVo> serviceVos = AppServiceModel.getAppServices();
    	serviceVos.stream().forEach(service->{
    		AppServiceRegistry.registerAppService(service.getAppServiceName(), 
    				service.getAppServiceClass(), service.getAppServiceMethod());
    	});
    }
    
    /**
     * 初始化URL与页面模板的对应关系表
     * 【闫涛 2016.03.04】初始版本
     */
    private static void initializeTemplateMap() {
    	templateMap = new HashMap<String, String>();
    	List<CmdJspTemplateVo> vos = CmdJspTemplateModel.getCmdJspTemplates();
    	for (CmdJspTemplateVo vo : vos) {
    		templateMap.put(vo.getCmd(), vo.getJspTemplateFile());
    	}
    }
    
    /**
     * 初始化URL与页面参数对应信息
     * 【闫涛 2016.03.04】初始版本
     */
    private static void initializeJspParamsMap() {
    	jspParamsMap = new HashMap<String, JspParamsVo>();
    	List<CmdVo> cmds = CmdModel.getCmds();
    	for (CmdVo cmd : cmds) {
    		List<JspParamsVo> vos = JspParamsModel.getCmdJspParams(cmd.getCmdId());
    		if (null == vos || vos.size() < 1) {
    			continue;
    		}
    		JspParamsVo jspParamsVo = new JspParamsVo();
    		for (JspParamsVo vo : vos) {
    			jspParamsVo.setParamValue(vo.getParamName(), 
    					(vo.getValue()!=null)?vo.getValue():vo.getDefaultValue());
    		}
    		jspParamsMap.put(cmd.getCmdName(), jspParamsVo);
    	}
    }
    
    /**
     * 初始化请求与控制器类对应关系
     * 【闫涛 2016.03.04】初始版本
     */
    private static void initializeHttpRequestMap() {
    	httpRequestMap = new HashMap<String, Method>();
    	Class[] paramsClass = new Class[] {HttpServletRequest.class, 
				HttpServletResponse.class, String.class};
    	List<CmdHttpRequestVo> vos = CmdHttpRequestModel.getCmdHttpRequestVos();    	
    	Class cls = null;
    	Method mtd = null;
    	for (CmdHttpRequestVo vo : vos) {
    		try {
				cls = Class.forName(vo.getClassName());
				mtd = cls.getMethod(vo.getMethodName(), paramsClass);
				httpRequestMap.put(vo.getCmdName(), mtd);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    }
}
