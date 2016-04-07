package com.haisijia.controller.dev;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.haisijia.common.AppMessage;
import com.haisijia.common.AppServiceRegistry;
import com.haisijia.common.AppUtil;
import com.haisijia.controller.AppController;
import com.haisijia.controller.AppServlet;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.jedis.JedisEngine;
import com.haisijia.model.JspParamsVo;
import com.haisijia.model.MenuDetailModel;
import com.haisijia.model.MenuVo;
import com.haisijia.model.dev.CmdHttpRequestModel;
import com.haisijia.model.dev.CmdJspParamsModel;
import com.haisijia.model.dev.CmdJspTemplateModel;
import com.haisijia.model.dev.CmdModel;
import com.haisijia.model.dev.DevPageModel;
import com.haisijia.model.dev.DevPageVo;
import com.haisijia.yhis.YhisConstants;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;

public class DevPageController implements AppController {
	/**
	 * 页面跳转处理函数
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 * 【闫涛 2016.04.01】初始版本
	 */
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String template = AppServlet.getTemplate(cmd);
		JspParamsVo jspParamsVo = AppServlet.getJspParamsVo(cmd);
		DevPageModel devPageModel = new DevPageModel();
		devPageModel.setJspParamsVo(jspParamsVo);
		
		String[] userFields = {"u" + request.getAttribute("userId"), "roleId", "hospitalId"};
		List<String> values = JedisEngine.getJedisValue(JedisEngine::getMap, userFields);
		Iterator<String> itr = values.iterator();
		int roleId = Integer.parseInt((itr.hasNext())?itr.next():"0");
		long hospitalId = Long.parseLong((itr.hasNext())?itr.next():"0");
		
		List<MenuVo> topMenus = MenuDetailModel.getTopMenuFromDb(hospitalId, roleId);
		int selectedTopMenuId = Integer.parseInt(AppUtil.getParameter(request, "stmId", "0"));
		if (0 == selectedTopMenuId) {
			selectedTopMenuId = topMenus.iterator().next().getMenuId();
		}
		List<MenuVo> sidebarMenus = MenuDetailModel.getSidebarMenuFromDb(hospitalId, roleId, selectedTopMenuId);
		int selectedSidebarMenuId = Integer.parseInt(AppUtil.getParameter(request, "ssmId", "0"));
		if (0 == selectedSidebarMenuId && sidebarMenus != null && sidebarMenus.size() > 0) {
			selectedSidebarMenuId = sidebarMenus.iterator().next().getMenuId();
		}
		
		switch (cmd) {
		case CMD_SHOW_PAGE_NEW:
			showDevPageNew(request, response, devPageModel);
			break;
		case CMD_SHOW_DEV_PAGE_LIST:
			showDevPageList(request, response, devPageModel);
			break;
		}
		
		devPageModel.setTopMenus(topMenus);
		devPageModel.setSelectedTopMenuId(selectedTopMenuId);
		devPageModel.setSidebarMenus(sidebarMenus);
		devPageModel.setSelectedSidebarMenuId(selectedSidebarMenuId);
		
        AppServiceRegistry.getInstance().putModel("patientModel", devPageModel);        
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher(  
                template);        
        request.setAttribute("model", devPageModel);
        requestDispatcher.forward(request, response);
	}
	
	/**
	 * Ajax请求处理函数
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 * 【闫涛 2016.02.28】初始版本
	 */
	public static void doAjaxGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		// 从Redis中取出用户信息
		String[] userFields = {"u" + request.getAttribute("userId"), "roleId", "hospitalId"};
		List<String> values = JedisEngine.getJedisValue(JedisEngine::getMap, userFields);
		Iterator<String> itr = values.iterator();
		int roleId = Integer.parseInt((itr.hasNext())?itr.next():"0");
		long hospitalId = Long.parseLong((itr.hasNext())?itr.next():"0");
		DevPageModel devPageModel = new DevPageModel();
		switch (cmd) {
		case CMD_ADD_DEV_PAGE_AJAX:
			addDevPageAjax(request, response, devPageModel);
			break;
		case CMD_GET_SPEC_DEV_PAGES_AJAX:
			getSpecDevPagesAjax(request, response, devPageModel);
			break;
		}
	}
	
	/**
	 * 显示添加新页面
	 * @param request
	 * @param response
	 * @param pageModel
	 * 【闫涛 2016.04.01】初始版本
	 */
	private static void showDevPageNew(HttpServletRequest request,
            HttpServletResponse response, DevPageModel pageModel) {
	}
	
	/**
	 * 显示页面列表页面
	 * @param request
	 * @param response
	 * @param pageModel
	 * 【闫涛 2016.04.01】初始版本
	 */
	private static void showDevPageList(HttpServletRequest request,
            HttpServletResponse response, DevPageModel devPageModel) {
		getSpecDevPagesBase(request, response, devPageModel);
	}
	
	private static void getSpecDevPagesAjax(HttpServletRequest request,
            HttpServletResponse response, DevPageModel devPageModel) {
		getSpecDevPagesBase(request, response, devPageModel);
		int pageSeq = Integer.parseInt(AppUtil.getParameter(request, "pageSeq", "1"));
		int amount = Integer.parseInt(AppUtil.getParameter(request, "recsPerPage", "5"));
		JSONObject json = new JSONObject();
		json.put("status", "Ok");
		json.put("total", devPageModel.getDevPagesTotal());
		json.put("recsPerPage", amount);
		json.put("pageSeq", pageSeq);
		json.put("devPages", devPageModel.getDevPages());
		try {
			AppUtil.sendHttpAjaxResponse(response, json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	/**
	 * 页面初始化显示或翻页显示时获取患者列表公共方法
	 * @param request
	 * @param response
	 * @param patientModel
	 * 【闫涛 2016.02.28】初始版本
	 */
	private static void getSpecDevPagesBase(HttpServletRequest request,
            HttpServletResponse response, DevPageModel devPageModel) {
		Method method = AppServiceRegistry.getInstance().getService(YhisConstants.SERVICE_GET_DEV_PAGES).orElse(null);
		int pageSeq = Integer.parseInt(AppUtil.getParameter(request, "pageSeq", "1"));
		int amount = Integer.parseInt(AppUtil.getParameter(request, "recsPerPage", "5"));
		int startIndex = (pageSeq - 1)*amount + 1;
    	JSONObject json = new JSONObject();
    	json.put("cmd", YhisConstants.SERVICE_GET_DEV_PAGES);
    	json.put("p", "pc");
    	json.put("v", "0.0.1");
    	json.put("patientName", "");
    	json.put("startIndex", startIndex);
    	json.put("amount", amount);
    	AppMessage msg = new AppMessage(1, YhisConstants.SERVICE_GET_PATIENTS, json);
    	Map<String, Object> resp = null;
    	try {
			resp = (Map<String, Object>)method.invoke(null, msg);
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
		List<DevPageVo> devPages = (List<DevPageVo>)resp.get("devPages");
		devPageModel.setDevPages(devPages);
		devPageModel.setDevPagesTotal((Integer)resp.get("total"));
	}
	
	/**
	 * 向数据库中添加新页面定义
	 * @param request
	 * @param response
	 * @param devPageModel
	 * 【闫涛 2016.04.01】初始版本
	 */
	private static void addDevPageAjax(HttpServletRequest request, 
			HttpServletResponse response, DevPageModel devPageModel) {
		String jsonReq = AppUtil.getParameter(request, "jsonReq");
		JSONObject json = new JSONObject(jsonReq);
		DevPageVo devPageVo = new DevPageVo();
		devPageVo.setCmdName(json.getString("cmdName"));
		devPageVo.setClassName(json.getString("className"));
		devPageVo.setMethodName(json.getString("methodName"));
		devPageVo.setJspTemplateId(json.getInt("templateId"));
		devPageVo.setTitle(json.getString("title"));
		devPageVo.setHeader(json.getString("header1"));
		devPageVo.setSidebar(json.getString("sidebar1"));
		devPageVo.setBody(json.getString("body1"));
		devPageVo.setFooter(json.getString("footer1"));		
		Connection conn = JdbcDao.beginTransaction();
		int cmdId = CmdModel.addCmd(conn, devPageVo.getCmdName());
		int cmdJspTemplateId = CmdJspTemplateModel.addCmdJspTemplate(conn, cmdId, devPageVo.getJspTemplateId());
		CmdHttpRequestModel.addCmdHttpRequest(conn, cmdId, devPageVo.getClassName(), devPageVo.getMethodName());
		CmdJspParamsModel.addCmdJspParams(conn, cmdId, devPageVo);
		JdbcDao.commit(conn);
		JdbcDao.closeTransaction(conn);		
		JSONObject respJson = new JSONObject();
		respJson.put("status", "Ok");
		try {
			AppUtil.sendHttpAjaxResponse(response, respJson);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public final static String CMD_SHOW_PAGE_NEW = "showDevPageNew";
	public final static String CMD_ADD_DEV_PAGE_AJAX = "addDevPageAjax";
	public final static String CMD_SHOW_DEV_PAGE_LIST = "showDevPageList";
	public final static String CMD_GET_SPEC_DEV_PAGES_AJAX = "getSpecDevPagesAjax";
}
